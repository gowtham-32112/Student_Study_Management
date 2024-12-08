package klu.controller;

import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.stereotype.Controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;

@Controller
public class ManagerController {

    @PostMapping("/uploadcourse")
    public ModelAndView uploadCourse(@RequestParam("courseName") String courseName,
                                     @RequestParam("courseFile") MultipartFile courseFile) throws IOException {

        // Get the filename from the uploaded file
        String fileName = courseFile.getOriginalFilename();

        // Create the upload directory path in the current working directory
        Path path = Paths.get("uploadedCourses", fileName);  // This creates the path using relative directories

        // Create the directory if it does not exist
        File uploadDirectory = path.getParent().toFile();  // Get the parent directory of the file
        if (!uploadDirectory.exists()) {
            uploadDirectory.mkdir(); // Creates the directory if it doesn't exist
        }

        // Save the file to the specified location
        File file = path.toFile();  // Convert the path to a File object
        courseFile.transferTo(file); // Transfer the file to the specified location

        // Optionally, save course details to your database here (courseName and fileName)

        // Return to the manager home page after upload
        ModelAndView mv = new ModelAndView();
        mv.setViewName("managerhome"); // After file upload, redirect to the manager's home page
        return mv;
    }
}
