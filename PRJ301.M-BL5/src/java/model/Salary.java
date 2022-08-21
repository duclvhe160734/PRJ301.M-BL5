/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Viet Duc
 */
public class Salary {
    private int sid;
    private Employee eid;
    private int salary;
    private int deduction;
    private int bonus;
    
    
    
    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public Employee getEid() {
        return eid;
    }

    public void setEid(Employee eid) {
        this.eid = eid;
    }

    public int getSalary() {
        return salary;
    }

    public void setSalary(int salary) {
        this.salary = salary;
    }

    public int getDeduction() {
        return deduction;
    }

    public void setDeduction(int deduction) {
        this.deduction = deduction;
    }

    public int getBonus() {
        return bonus;
    }

    public void setBonus(int bonus) {
        this.bonus = bonus;
    }
    
    
}
