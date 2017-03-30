package cn.edu.neusoft.meal.domain;

/**
 * Created by 74741 on 2016/11/29.
 */

public class Orders
{
    private Fruits fruits;
    private User user;
    private int id,user_id,fruits_id;
    private String createDate;
    private String number, state;

    public int getid()
    {
        return id;
    }

    public void setid(int id)
    {
        this.id = id;
    }

    public int getUser_id()
    {
        return user_id;
    }

    public void setUser_id(int user_id)
    {
        this.user_id = user_id;
    }

    public int getFruits_id()
    {
        return fruits_id;
    }

    public void setFruits_id(int fruits_id)
    {
        this.fruits_id = fruits_id;
    }


    public String getNumber()
    {
        return number;
    }

    public void setNumber(String number)
    {
        this.number = number;
    }

    public String getState()
    {
        return state;
    }

    public void setState(String state)
    {
        this.state = state;
    }

    public Fruits getFruits() {
        return fruits;
    }

    public void setFruits(Fruits fruits) {
        this.fruits = fruits;
    }


    public String getCreateDate() {
        return createDate;
    }

    public void setCreateDate(String createDate) {
        this.createDate = createDate;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
