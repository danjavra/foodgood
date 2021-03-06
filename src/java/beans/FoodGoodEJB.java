/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import entities.Dish;
import entities.Rate;
import entities.Restaurant;
import entities.User;
import exceptions.MisExcepciones;
import java.math.BigDecimal;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.PersistenceUnit;
import javax.persistence.Query;

/**
 *
 * @author Anjo
 */
@Stateless
public class FoodGoodEJB {
    
  @PersistenceUnit
    EntityManagerFactory emf;

    public List<User> loginUser(String username, String password) {
        EntityManager em = emf.createEntityManager();
        Query query = em.createQuery("Select e from User e where e.username = :username AND e.password = :password");
        query.setParameter("username", username);
        query.setParameter("password", password);
        return query.getResultList();
    }

    public User getUserByUsername(String username) {
        EntityManager em = emf.createEntityManager();
        User user = em.find(User.class, username);
        return user;
    }
    
    public Dish getDishByName(String name) {
        EntityManager em = emf.createEntityManager();
        Dish dish = em.find(Dish.class, name);
        return dish;
    }
    
    public Restaurant getRestaurantByName(String name){
        EntityManager em = emf.createEntityManager();
        Restaurant restaurant = em.find(Restaurant.class, name);
        return restaurant;    
    }
    
    public Restaurant getRestaurantBySpeciality(String type){
        EntityManager em = emf.createEntityManager();
        Restaurant restaurant = em.find(Restaurant.class, type);
        return restaurant;    
    }
     
    public List<Dish> getAllDishByRestaurant(String restaurante) {
        EntityManager em = emf.createEntityManager();
        Restaurant aux = em.find(Restaurant.class, restaurante);
        Query q = em.createQuery("SELECT i FROM Dish i where i.restaurant = :restaurant");
        q.setParameter("restaurant", aux);
        return q.getResultList();
    }
    
    public List<Dish> getDishByRestaurant(Restaurant e){
        EntityManager em = emf.createEntityManager();
        Query q = em.createQuery("SELECT i FROM Dish i WHERE i.restaurant = :restaurant ");
        q.setParameter("restaurant", e);
        return q.getResultList();
    }

    public List<User> getAllUsers(){
        EntityManager em = emf.createEntityManager();
        Query q = em.createNamedQuery("User.findAll");
        return q.getResultList();
    }
    
    public List<Restaurant> getAllRestaurants(){
        EntityManager em = emf.createEntityManager();
        Query q = em.createNamedQuery("Restaurant.findAll");
        return q.getResultList();
    }
    
    public List<Dish> getAllDish(){
        EntityManager em = emf.createEntityManager();
        Query q = em.createNamedQuery("Dish.findAll");
        return q.getResultList();
    }
    
     public void altaUsuario(User e) throws MisExcepciones {
        EntityManager em = emf.createEntityManager();
        User aux = em.find(User.class, e.getUsername());
        if (aux != null) {
            em.close();
            throw new MisExcepciones("Ya existe un usuario con este nombre");
        }
        em.persist(e);
        em.close();
    }
     
     public void altaRestaurant(Restaurant e) throws MisExcepciones {
        EntityManager em = emf.createEntityManager();
        Restaurant aux = em.find(Restaurant.class, e.getName());
        if (aux != null) {
            em.close();
            throw new MisExcepciones("Ya existe un restaurante con este nombre");
        }
        em.persist(e);
        em.close();
    }
     
     public void altaPlato(Dish e) throws MisExcepciones {
        EntityManager em = emf.createEntityManager();
        Dish aux = em.find(Dish.class, e.getName());
        if (aux != null) {
            em.close();
            throw new MisExcepciones("Ya existe un plato con este nombre");
        }
        em.persist(e);
        em.close();
    }
     
     public void altaRate(Rate e) throws MisExcepciones {
        EntityManager em = emf.createEntityManager();
        Rate aux = em.find(Rate.class, e.getIdrate());
        if (aux != null) {
            em.close();
            throw new MisExcepciones("Ya existe una valoración con este id");
        }
        em.persist(e);
        em.close();
    }
     
       public void editPrice(Dish e, BigDecimal newprice ){
        EntityManager em = emf.createEntityManager();
        Dish aux = em.find(Dish.class, e.getPrice());
        aux.setPrice(newprice);
        em.persist(aux);
        em.close();
        
    }
}
