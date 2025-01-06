package com.springprojects.JobHunter.repository;

import com.springprojects.JobHunter.model.JobPost;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Repository
public class JobRepo {

    List<JobPost> jobPosts = new ArrayList<>(Arrays.asList(
            new JobPost(1, "Java Developer", "Must have good experience in core Java and advanced Java", 2,
                    List.of("Core Java", "J2EE", "Spring Boot", "Hibernate")),
            new JobPost(2, "Frontend Developer", "Experience in building responsive web applications using React",
                    3, List.of("HTML", "CSS", "JavaScript", "React")),
            new JobPost(3, "Data Scientist", "Strong background in machine learning and data analysis", 4,
                    List.of("Python", "Machine Learning", "Data Analysis")),
            new JobPost(4, "Mobile App Developer", "Experience in mobile app development for iOS and Android",
                    3, List.of("iOS Development", "Android Development", "Mobile App")),
            new JobPost(5, "Full Stack Developer", "Experience in both front-end and back-end development",
                    5, List.of("JavaScript", "Node.js", "React", "Spring", "MongoDB")),
            new JobPost(6, "Backend Developer", "Build server-side logic and databases for web applications",
                    4, List.of("Java", "Spring", "Node.js", "MongoDB"))
    ));

    public void save(JobPost jobPost) {
        jobPosts.add(jobPost);
        System.out.println(jobPosts);
    }

    public List<JobPost> fetchAllJobPosts() {
        return jobPosts;
    }
}
