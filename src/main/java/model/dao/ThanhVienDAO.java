/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao;

import java.util.List;
import model.pojo.Thanhvien;
import model.util.HibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author Alejandro.Luna
 */
public class ThanhVienDAO {
    public static List<Thanhvien> layDS(){
        List<Thanhvien> lst = null;
        Session session = null;
        Query query = null;
        String hql = null;
        
        try {
            session  = HibernateUtil.getSessionFactory().openSession();
            
            hql = "from Thanhvien";
            
            query = session.createQuery(hql);
            
            lst = query.list();
        } catch (Exception e) {
            e.printStackTrace();
        } finally{
            session.close();
        }
        return lst;
    }
}
