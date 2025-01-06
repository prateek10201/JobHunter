package com.springprojects.JobHunter.service;

import com.springprojects.JobHunter.model.JobPost;
import com.springprojects.JobHunter.repository.JobRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class JobService {

    @Autowired
    private JobRepo jobRepo;

    public void addJob(JobPost jobPost)
    {
        jobRepo.save(jobPost);
    }

    public List<JobPost> getAllJobPosts()
    {
        return jobRepo.fetchAllJobPosts();
    }
}
