package com.example.JUIData;

import java.util.List;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import com.razorpay.Order;
import com.razorpay.RazorpayClient;
import com.razorpay.RazorpayException;

@RestController
public class LogicController {

    @Autowired
    DatabaseRepository dr;
    @Autowired
    private AddressRepository addressRepository;

    @GetMapping("")
    public ModelAndView lp() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("index");
        return mv;
    }

    @PostMapping("registration")
    public ModelAndView newRegistration(@RequestParam(name="t1") String name,
                                        @RequestParam(name="t2") long mb,
                                        @RequestParam(name="t3") String email,
                                        @RequestParam(name="t4") String pass) {

        Customer c1 = new Customer();
        c1.setName(name);
        c1.setEmail(email);
        c1.setPasskey(pass);
        c1.setContact(mb);

        dr.save(c1);

        ModelAndView mv = new ModelAndView();
        mv.setViewName("index");
        mv.addObject("data", "New Record Created Successfully");
        return mv;
    }

    @PostMapping("login")
    public ModelAndView login(@RequestParam(name="t1") String user,
                              @RequestParam(name="t2") String pass) {
        List<Customer> c1 = dr.findAll();
        for (Customer cust : c1) {
            if ((cust.getEmail().equals(user)) && (cust.getPasskey().equals(pass))) {
                ModelAndView mv = new ModelAndView();
                mv.addObject("id", cust.getId());
                mv.addObject("name", cust.getName());
                mv.addObject("contact", cust.getContact());
                mv.addObject("email", cust.getEmail());
                mv.setViewName("welcome");
                return mv;
            }
        }
        ModelAndView mv = new ModelAndView();
        mv.addObject("data", "user id or password mismatched");
        mv.setViewName("index");
        return mv;
    }

    @PostMapping("address")
    public ModelAndView getAddressPage(@RequestParam(name="t1") String cname,
                                       @RequestParam(name="t2") String email,
                                       @RequestParam(name="t3") long contact,
                                       @RequestParam(name="t4") int price,
                                       @RequestParam(name="t5") String pname) {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("address");
        mv.addObject("name", cname);
        mv.addObject("email", email);
        mv.addObject("contact", contact);
        mv.addObject("price", price);
        mv.addObject("productName", pname);
        return mv;
    }

    @PostMapping("saveaddress")
    public ModelAndView saveAddress(@RequestParam(name="name") String name,
                                    @RequestParam(name="email") String email,
                                    @RequestParam(name="contact") long contact,
                                    @RequestParam(name="address") String address,
                                    @RequestParam(name="city") String city,
                                    @RequestParam(name="pincode") String pincode,
                                    @RequestParam(name="price") int price,
                                    @RequestParam(name="productName") String productName) 
                                    throws RazorpayException {

        Address addr = new Address();
        addr.setName(name);
        addr.setEmail(email);
        addr.setContact(contact);
        addr.setAddress(address);
        addr.setCity(city);
        addr.setPincode(pincode);

        addressRepository.save(addr);

        // API - Keys
        RazorpayClient razorpay = new RazorpayClient("rzp_test_m8Ts2ANbu9AjRp", "bvjwEDGH5CfdDMInSsSDlQWj");

        JSONObject orderRequest = new JSONObject();
        orderRequest.put("amount", (price * 100)); // amount in paise
        orderRequest.put("currency", "INR");
        orderRequest.put("receipt", productName + name);
        JSONObject notes = new JSONObject();
        notes.put("notes_key_1", name);
        notes.put("notes_key_2", productName);
        orderRequest.put("notes", notes);

        Order order = razorpay.orders.create(orderRequest);

        // Redirect to index.jsp after successful payment
        ModelAndView mv = new ModelAndView();
        mv.setViewName("index");
        mv.addObject("data", "Payment successful. Order ID: " + order.get("id"));
        return mv;
    }

}
