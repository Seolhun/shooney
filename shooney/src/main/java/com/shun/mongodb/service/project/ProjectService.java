package com.shun.mongodb.service.project;

import java.util.List;

import com.shun.mongodb.model.project.Project;

public interface ProjectService {

	Project findById(String id);

	void saveProject(Project Project);

	void updateProject(Project Project);

	void deleteProjectById(String id);

	List<Project> findAllProjects();

	void deleteAllProjects();

	boolean isProjectExist(Project Project);

}