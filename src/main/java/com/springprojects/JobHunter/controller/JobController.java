package com.springprojects.JobHunter.controller;

import com.springprojects.JobHunter.model.JobPost;
import com.springprojects.JobHunter.service.JobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
public class JobController {

    @Autowired
    private JobService jobService;

    @GetMapping({"/", "home"})
    public String home()
    {
        return "home";
    }

    @GetMapping("addjob")
    public String addjob()
    {
        return "addjob";
    }

    @GetMapping("viewalljobs")
    public String viewalljobs(Model model)
    {
        List<JobPost> jobs = jobService.getAllJobPosts();
        model.addAttribute("jobPosts", jobs);
        return "viewalljobs";
    }

    @PostMapping("handleForm")
    public String handleForm(JobPost jobPost)
    {
        jobService.addJob(jobPost);
        return "success";
    }
}
