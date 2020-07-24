# Presence-Service
A basic User Registration and Authentication System which on user login shows current viewers and past viewers latest login/logout time.


UI PAGES:
=> LOGIN PAGE : * Contains a login layout with Username and Password fields.
                * Contains link to Registration Page

=> REGISTRATION PAGE :  * Contains two Button : Register here and Logout 
                        * Register here : Redirects to Registration Page
                        * Logout : redirects to initial Login page(ends current session)
                        
=> MAIN PAGE : * Shows current user avatar (hover over to see Username and email id of the user)
               * Contains two buttons Show Past Visitors and Logout
               * Show Past Visitors: Display past registered Users data - UNAME, LOGIN_TIME, LAST_ACCESSED_TIME
               * Logout : Redirects to initial Login Page(ends current session)
               
BACK-END FUNCTIONALITY:
=> LOGIN PAGE : * Authenticate the user (using database)
                * All fields are required to be filled.
                * IF wrong Username/Password is passed - error message is displayed and login fails
                * IF unregistered Username is passed - error message is displayed
                * IF correct credentials are passed - login successful
                * IF Registration Link is clicked - Redirects to Registration web page
                
=> REGISTRATION PAGE : * On click "Register Here" : Redirects to Registration Form
                       * All fields of the form are required.
                       * IF any of the fields are left empty: error 
                       * IF Username is already taken : error "Username already Taken"
                       * On Click "Sign Up" : Redirects to a web page with message "Successfully Registered" and a Logout Button
                       * Database Updates
                       
=> MAIN PAGE : * Display Current User avatar 
               * Hover over avatar - tooltip with uname and email_id
               * Records Login Time and Last accessed Time(time at which last request is sent by user before session overs ie. before logout) of User
               * On click "Show past Visitors" : Data fetched from database and displayed in tabular form
               
DATABASES:

=> MEMBERS : USER_NAME VARCHAR(45),
             EMAIL_ID  VARCHAR(45),
             PASSWORD  VARVHAR(45)

=> PAST_VIEWERS : UNAME              VARCHAR(45),
                  LOGIN_TIME         VARCHAR(45),
                  LAST_ACCESSED_TIME VARVHAR(45)
             
             
Constraints:
=> Username must be Unique


               
