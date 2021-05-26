package ru.tomko.spring.mvc.service;

import ru.tomko.spring.mvc.entity.Employee;

import java.util.List;

public interface EmployeeService {
    public List<Employee> getAllEmployees();
    public Employee getEmployee(int id);
    public void saveEmployee(Employee employee);
    public void deleteEmployee(int id);
}
