
CREATE TABLE register(register_id       NUMBER(10)    PRIMARY KEY
                     ,full_name         VARCHAR2(100)
                     ,email_address     VARCHAR2(100) UNIQUE
                     ,password          VARCHAR2(100)
                     ,confirm_password  VARCHAR2(100)
                     ,phone_number      VARCHAR2(15)  UNIQUE
                     ,otp               NUMBER(10)    NOT NULL
                     ,experience_level  VARCHAR2(50)
                     ,location          VARCHAR2(100)
                     ,key_skills        VARCHAR2(200)
                      );
   

CREATE TABLE profile(profile_id    NUMBER(10)   PRIMARY KEY
                    ,register_id   NUMBER(10)
                    ,full_name     VARCHAR2(100)
                    ,date_of_birth DATE
                    ,gender        VARCHAR2(10)
                    ,college_name  VARCHAR2(100)
                    ,school_name   VARCHAR2(100)
                    ,degree        VARCHAR2(100)
                    ,company_name  VARCHAR2(100)
                    ,role          VARCHAR2(100)
                    ,skills        VARCHAR2(300)
                    ,project_title VARCHAR2(200)
                    ,resume        VARCHAR2(100) NOT NULL
                    ,summary       VARCHAR2(500)
                    ,address       VARCHAR2(300)
                    ,linkedin_id   VARCHAR2(200)
                    ,FOREIGN KEY(register_id)REFERENCES register(register_id)
                     );
   
