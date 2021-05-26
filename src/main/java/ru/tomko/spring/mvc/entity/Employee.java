package ru.tomko.spring.mvc.entity;

import javax.validation.constraints.NotBlank;

import javax.persistence.*;
import javax.validation.constraints.Min;

@Entity
@Table(name = "employees")
@NamedQuery(name = "getAllEmployees", query = "from Employee" )
@NamedQuery(name = "getEmployee", query = "select emp from Employee emp where emp.id = :id")
public class Employee {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @NotBlank(message = "name must by not empty")
    private String name;
    @NotBlank(message = "surname must by not empty")
    private String surname;
    @NotBlank(message = "department must by not empty")
    private String department;
    @Min(value = 100, message = "salary must be greater than 100")
    private int salary;

    public Employee() {
    }

    public Employee(int id, String name, String surname, String department, int salary) {
        this.id = id;
        this.name = name;
        this.surname = surname;
        this.department = department;
        this.salary = salary;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String departament) {
        this.department = departament;
    }

    public int getSalary() {
        return salary;
    }

    public void setSalary(int salary) {
        this.salary = salary;
    }
}
