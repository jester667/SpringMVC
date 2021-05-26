package ru.tomko.spring.mvc.dao;

import ru.tomko.spring.mvc.entity.Employee;

import java.util.List;

public interface EmployeeDAO {
    public List<Employee> getAllEmployees();
    public Employee getEmployee(int id);
    public void saveEmployee(Employee employee);
    public void deleteEmployee(int id);
}
