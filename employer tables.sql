
CREATE TABLE employer_profile(employer_id        NUMBER(10)     PRIMARY KEY
                             ,full_name          VARCHAR2(200)  NOT NULL
                             ,email_id           VARCHAR2(100)  UNIQUE NOT NULL
                             ,phone_number       NUMBER(15)     UNIQUE
                             ,job_title          VARCHAR2(100)  NOT NULL
                             ,experience         VARCHAR2(50)
                             ,location           VARCHAR2(100)
                             ,company_name       VARCHAR2(200)  NOT NULL
                             ,industry           VARCHAR2(100)  NOT NULL
                             ,company_size       VARCHAR2(50)   NOT NULL
                             ,website            VARCHAR2(50)
                             ,founded            VARCHAR2(50)
                             ,company_location   VARCHAR2(150)
                             ,description        VARCHAR2(50)
                             ,avatar_url         VARCHAR2(100)
                             ,updated_at         DATE
                             ,FOREIGN KEY(employer_id)REFERENCES employers(employer_id)
                              );


CREATE TABLE employer_settings(employer_id            NUMBER(10)    PRIMARY KEY
                              ,language               VARCHAR2(50)  
                              ,timezone               VARCHAR2(50)     
                              ,theme                  VARCHAR2(100)  
                              ,notif_email            CHAR(1)       DEFAULT'1'CHECK
                              (notif_email IN(0,1))
                              ,notif_sms              CHAR(1)       DEFAULT'0'CHECK
                              (notif_sms IN(0,1))
                              ,notif_push             CHAR(1)       DEFAULT'1'CHECK
                              (notif_push IN(0,1))
                              ,notif_daily_digest     CHAR(1)       DEFAULT'1'CHECK
                              (notif_daily_digest IN(0,1))
                              ,privacy_public         CHAR(1)       DEFAULT'0'CHECK
                              (privacy_public IN(0,1))
                              ,privacy_allow_messages CHAR(1)       DEFAULT'1'CHECK
                              (privacy_allow_messages IN(0,1))
                              ,privacy_show_company   CHAR(1)       DEFAULT'1'CHECK
                              (privacy_show_company IN(0,1))
                              ,updated_at             DATE
                              ,FOREIGN KEY(employer_id)REFERENCES employers(employer_id)
                               );
                               
                           

CREATE TABLE employer_jobs(job_id             NUMBER(10)    PRIMARY KEY
                          ,employer_id        NUMBER(10)  
                          ,company            VARCHAR2(200) NOT NULL
                          ,job_title          VARCHAR2(100) NOT NULL
                          ,location           VARCHAR2(100) NOT NULL
                          ,employment_type    VARCHAR2(200) NOT NULL
                          ,salary             NUMBER(10)  
                          ,deadline           DATE          NOT NULL
                          ,min_qualification  VARCHAR2(50)  NOT NULL
                          ,passout_year       VARCHAR2(50)
                          ,description_html   CLOB
                          ,requirement_html   CLOB
                          ,hr_message_html    CLOB
                          ,status             VARCHAR2(50)
                          ,FOREIGN KEY(employer_id)REFERENCES employers(employer_id)
                           );



CREATE TABLE job_applications(application_id  NUMBER(10)  PRIMARY KEY
                             ,job_id          NUMBER(10)  
                             ,job_seekar_id   NUMBER(10) 
                             ,applied_date    DATE        NOT NULL
                             ,status          VARCHAR2(50) 
                             ,resume_url      CLOB
                             ,notes           CLOB  
                             ,FOREIGN KEY(job_id)REFERENCES employer_jobs(job_id)
                             ,FOREIGN KEY(job_seekar_id)REFERENCES job_seekar(job_seekar_id)
                              );
