/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package mypackage;


import java.sql.*;


import java.util.logging.Level;
import java.util.logging.Logger;


public class DataBaseClass {
   private Connection conn;
   
   
   public DataBaseClass() throws ClassNotFoundException, SQLException {
        establishConnection();
    }
    private void establishConnection() throws ClassNotFoundException, SQLException {
       
            Class.forName("com.mysql.jdbc.Driver");
            conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/civilprob","root","");
       
    }
    
    
    public boolean loginValidate(String aadharid, String password) throws SQLException{
        boolean status=false;
    
    String sql="SELECT * FROM siteuser\n"
            + "WHERE aadharid=? and password=? and status=?";
    PreparedStatement pstm=conn.prepareStatement(sql);
    pstm.setString(1,aadharid);
    pstm.setString(2,password);
    pstm.setString(3,"Accept");
    ResultSet rs=pstm.executeQuery();
    int i=0;
    while(rs.next()){
        
        i++;
            
        }
    if( i==1){
         return true;
       } 
    else
    {
         return false;
    }
    }
    
    
    public boolean loginValidateAdmin(String adminname, String password) throws SQLException{
        boolean status=false;
    
    String sql="SELECT * FROM admin\n"
            + "WHERE adminname=? and password=?";
    PreparedStatement pstm=conn.prepareStatement(sql);
    pstm.setString(1,adminname);
    pstm.setString(2,password);
    
    ResultSet rs=pstm.executeQuery();
    int i=0;
    while(rs.next()){
        
        i++;
            
        }
    if( i==1){
         return true;
       } 
    else
    {
         return false;
    }
    }
    
    
    
    
    
   public String getUserName(String aadharid)
   {String username = "";
   PreparedStatement pstm;
   try {
            pstm = conn.prepareStatement("Select * from siteuser where aadharid=?");
            pstm.setString(1,aadharid);
            ResultSet rs=pstm.executeQuery();
            while(rs.next()){
                username= rs.getString("username");
            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            
        }
   
   
      return username; 
   }
   
   
   public String getUserID(String username)
   {String userid = "";
   PreparedStatement pstm;
   try {
            pstm = conn.prepareStatement("Select * from siteuser where username=?");
            pstm.setString(1,username);
            ResultSet rs=pstm.executeQuery();
            while(rs.next()){
                userid= rs.getString("aadharid");
            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            
        }
      return userid; 
   }
   
   
   
   
   
   
   public ResultSet newUserRequest()
   {
   PreparedStatement pstm;
   ResultSet rs = null;
   try {
            pstm = conn.prepareStatement("Select * from siteuser where status is null");
            //pstm.setString(1,null);
            rs=pstm.executeQuery();
            
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            
        }
   
   
      return rs; 
   }
   
   
   
    public void startWork(String id,String date,String estdate){
        try {
            String sql="update problem set status=?,estcompdate=?,startdate=? where pid=?";
            
            PreparedStatement pstm=conn.prepareStatement(sql);
            pstm.setString(1,"InProgress");
             pstm.setString(2,estdate);
              pstm.setString(3,date);
            pstm.setString(4,id);
        
  
         pstm.executeUpdate();
         
        } catch (SQLException ex) {
            Logger.getLogger(DataBaseClass.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
   
    
   public void editProfile(String aadharid,String username,String city,String address,String emailadd,String contactno,String password)
           {
        try {
            String sql="update siteuser set username=?,city=?,address=?,emailadd=?,contactno=?,password=? where aadharid=?";
            
            PreparedStatement pstm=conn.prepareStatement(sql);
            pstm.setString(1,username);
             pstm.setString(2,city);
              pstm.setString(3,address);
            pstm.setString(4,emailadd);
         pstm.setString(5,contactno);
             pstm.setString(6,password);
             pstm.setString(7,aadharid);
  
         pstm.executeUpdate();
         
        } catch (SQLException ex) {
            Logger.getLogger(DataBaseClass.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
           
           
           
           
    
    
    
            public void completeWork(String id,String actcompdate){
        try {
            String sql="update problem set status=?,actcompdate=? where pid=?";
            
            PreparedStatement pstm=conn.prepareStatement(sql);
            pstm.setString(1,"Completed");
             pstm.setString(2,actcompdate);
            pstm.setString(3,id);
        
  
         pstm.executeUpdate();
         
        } catch (SQLException ex) {
            Logger.getLogger(DataBaseClass.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
            
            
            
            
            
    
    
    
    
   
    
    
    public ResultSet notstartedAdmin()
   {
   PreparedStatement pstm;
   ResultSet rs = null;
   try {
            pstm = conn.prepareStatement("Select * from problem where status=?");
            pstm.setString(1,"Not Started");
            rs=pstm.executeQuery();
            
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            
        }
   
   
      return rs; 
   }
   
   
    
     public ResultSet viewprobdesc(String id)
   {
   PreparedStatement pstm;
   ResultSet rs = null;
   try {
            pstm = conn.prepareStatement("Select * from problem where pid=?");
            pstm.setString(1,id);
            rs=pstm.executeQuery();
            
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            
        }
   
   
      return rs; 
   }
    
    
    
    
    
    public ResultSet inprogressAdmin()
    {
   PreparedStatement pstm;
   ResultSet rs = null;
   try {
            pstm = conn.prepareStatement("Select * from problem where status=?");
            pstm.setString(1,"InProgress");
            rs=pstm.executeQuery();
            
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            
        }
   
   
      return rs; 
   }
    
    public ResultSet completedAdmin()
   {
   PreparedStatement pstm;
   ResultSet rs = null;
   try {
            pstm = conn.prepareStatement("Select * from problem where status=?");
            pstm.setString(1,"Completed");
            rs=pstm.executeQuery();
            
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            
        }
   
   
      return rs; 
   }
    
    
    
     public ResultSet userProfile(String username)
   {
   PreparedStatement pstm;
   ResultSet rs = null;
   try {
            pstm = conn.prepareStatement("Select * from siteuser where username=?");
            pstm.setString(1,username);
            rs=pstm.executeQuery();
            
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            
        }
   
   
      return rs; 
   }
    
    
    
     public ResultSet myfeedback(String userid,String pid)
   {
   PreparedStatement pstm;
   ResultSet rs = null;
   try {
            pstm = conn.prepareStatement("Select * from feedback where username=? and pid=?");
            pstm.setString(1,userid);
            pstm.setString(2,pid);
            rs=pstm.executeQuery();
            
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            
        }
   
   
      return rs; 
   }
     
     
     
     
     
    
   public ResultSet allProblemsAdmin()
   {
   PreparedStatement pstm;
   ResultSet rs = null;
   try {
            pstm = conn.prepareStatement("Select * from problem");
            
            rs=pstm.executeQuery();
            
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            
        }
   
   
      return rs; 
   }
   
   
   
   public ResultSet allUsers()
   {
   PreparedStatement pstm;
   ResultSet rs = null;
   try {
            pstm = conn.prepareStatement("Select * from siteuser");
            
            rs=pstm.executeQuery();
            
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            
        }
   
   
      return rs; 
   }
   
   
    public ResultSet feedbackperproblem(String id)
   {
   PreparedStatement pstm;
   ResultSet rs = null;
   try {
            pstm = conn.prepareStatement("Select * from feedback where pid=?");
            pstm.setString(1,id);
            
            rs=pstm.executeQuery();
            
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            
        }
   
   
      return rs; 
   }
   
   
   public ResultSet allcontact()
   {
   PreparedStatement pstm;
   ResultSet rs = null;
   try {
            pstm = conn.prepareStatement("Select * from contact");
            
            
            rs=pstm.executeQuery();
            
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            
        }
   
   
      return rs; 
   }
   
   
   
    
    
    
    
    
    
    
   
   
   
   
   public void addNewUser(String aadharid,String username,String city,String address,String emailadd,
            String contactno,String password){
        try {
            String sql="INSERT into siteuser(aadharid,username,city,address,emailadd,contactno,password)"
                    + "Values(?,?,?,?,?,?,?)";
            
            PreparedStatement pstm=conn.prepareStatement(sql);
            pstm.setString(1,aadharid);
            pstm.setString(2,username);
            pstm.setString(3,city);
            pstm.setString(4,address);
            pstm.setString(5,emailadd);
            pstm.setString(6,contactno);
            pstm.setString(7,password);
         pstm.executeUpdate();
         
        } catch (SQLException ex) {
            Logger.getLogger(DataBaseClass.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
   
   
   
   public void addProblemUser(String ptitle,String pdesc,String date,String username,String pplace, String status){
        try {
            String sql="INSERT into problem(ptitle,pdesc,pdate,username,pplace,status) values(?,?,?,?,?,?)";
                    
            
            PreparedStatement pstm=conn.prepareStatement(sql);
            pstm.setString(1,ptitle);
            pstm.setString(2,pdesc);
            pstm.setString(3,date);
            pstm.setString(4,username);
            pstm.setString(5,pplace);
            pstm.setString(6,status);
         pstm.executeUpdate();
         
        } catch (SQLException ex) {
            Logger.getLogger(DataBaseClass.class.getName()).log(Level.SEVERE, null, ex);
           
        }
    }
   
   
   
   public void addfeedback(String msg,String username,String fdate,String pid){
        try {
            String sql="INSERT into feedback(msg,username,fdate,pid) values(?,?,?,?)";
                    
            
            PreparedStatement pstm=conn.prepareStatement(sql);
            pstm.setString(1,msg);
            pstm.setString(2,username);
            pstm.setString(3,fdate);
            pstm.setString(4,pid);
            pstm.executeUpdate();
         
        } catch (SQLException ex) {
            Logger.getLogger(DataBaseClass.class.getName()).log(Level.SEVERE, null, ex);
           
        }
    }
   
   
   
   
   
   
   
   public void voteNow(String userid,String pid){
       ResultSet rs = null;
       PreparedStatement pstm1;
      int n = 0;
       try {
            pstm1 = conn.prepareStatement("Select * from vote where pid=? and userid=?");
           pstm1.setString(1,pid);
            pstm1.setString(2,userid);
            rs=pstm1.executeQuery();
            while(rs.next())
            {
            n++;
            }
            if(n==1)
            {
            
            }
            else
            {
            String sql="INSERT into vote(pid,userid) values(?,?)";
                    
            
            PreparedStatement pstm=conn.prepareStatement(sql);
            pstm.setString(1,pid);
            pstm.setString(2,userid);
          
         pstm.executeUpdate();
           }
        
        } catch (SQLException ex) {
            Logger.getLogger(DataBaseClass.class.getName()).log(Level.SEVERE, null, ex);
           
        }
       
    }
   
   
   
    public int getVote(String pid){
       ResultSet rs = null;
       PreparedStatement pstm1;
      int n = 0;
       try {
            pstm1 = conn.prepareStatement("Select * from vote where pid=?");
           pstm1.setString(1,pid);
           
            rs=pstm1.executeQuery();
            while(rs.next())
            {
            n++;
            }
            
        
        } catch (SQLException ex) {
            Logger.getLogger(DataBaseClass.class.getName()).log(Level.SEVERE, null, ex);
           
        }
       return n;
    }
   
   
   
    
    public int totalproblems(){
       ResultSet rs = null;
       PreparedStatement pstm1;
      int n = 0;
       try {
            pstm1 = conn.prepareStatement("Select * from problem");
           
           
            rs=pstm1.executeQuery();
            while(rs.next())
            {
            n++;
            }
            
        
        } catch (SQLException ex) {
            Logger.getLogger(DataBaseClass.class.getName()).log(Level.SEVERE, null, ex);
           
        }
       return n;
    }
   
    
    
    
    public int totalproblemsInProgress(){
       ResultSet rs = null;
       PreparedStatement pstm1;
      int n = 0;
       try {
            pstm1 = conn.prepareStatement("Select * from problem where status='InProgress'");
           
           
            rs=pstm1.executeQuery();
            while(rs.next())
            {
            n++;
            }
            
        
        } catch (SQLException ex) {
            Logger.getLogger(DataBaseClass.class.getName()).log(Level.SEVERE, null, ex);
           
        }
       return n;
    }
    
    
    public int totalproblemsCompleted(){
       ResultSet rs = null;
       PreparedStatement pstm1;
      int n = 0;
       try {
            pstm1 = conn.prepareStatement("Select * from problem where status='Completed'");
           
           
            rs=pstm1.executeQuery();
            while(rs.next())
            {
            n++;
            }
            
        
        } catch (SQLException ex) {
            Logger.getLogger(DataBaseClass.class.getName()).log(Level.SEVERE, null, ex);
           
        }
       return n;
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
   
    
    
    public int voteornot(String userid,String pid){
       ResultSet rs = null;
       PreparedStatement pstm1;
      int n = 0;
       try {
            pstm1 = conn.prepareStatement("Select * from vote where pid=? and userid=?");
           pstm1.setString(1,pid);
            pstm1.setString(2,userid);
            rs=pstm1.executeQuery();
            while(rs.next())
            {
            n++;
            }
            
        
        } catch (SQLException ex) {
            Logger.getLogger(DataBaseClass.class.getName()).log(Level.SEVERE, null, ex);
           
        }
       return n;
    }
   
    
    public int sendorview(String userid,String pid){
       ResultSet rs = null;
       PreparedStatement pstm1;
      int n = 0;
       try {
            pstm1 = conn.prepareStatement("Select * from feedback where pid=? and username=?");
           pstm1.setString(1,pid);
            pstm1.setString(2,userid);
            rs=pstm1.executeQuery();
            while(rs.next())
            {
            n++;
            }
            
        
        } catch (SQLException ex) {
            Logger.getLogger(DataBaseClass.class.getName()).log(Level.SEVERE, null, ex);
           
        }
       return n;
    }
   
    
    
    
    
    
    
    
   
   
   
   
   
    public void updatestatus(String aadharid,String status){
        try {
            String sql="update siteuser set status=? where aadharid=?";
            
            PreparedStatement pstm=conn.prepareStatement(sql);
            pstm.setString(1,status);
            pstm.setString(2,aadharid);
  
         pstm.executeUpdate();
         
        } catch (SQLException ex) {
            Logger.getLogger(DataBaseClass.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
   
    
    public void deleteUserAdmin(String aadharid){
        try {
            String sql="delete from siteuser where aadharid=?";
            
            PreparedStatement pstm=conn.prepareStatement(sql);
           
            pstm.setString(1,aadharid);
  
         pstm.executeUpdate();
         
        } catch (SQLException ex) {
            Logger.getLogger(DataBaseClass.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
   
    
    
    
   
}
   
   
   
   
   
   










