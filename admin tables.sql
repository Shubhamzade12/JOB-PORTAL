
CREATE TABLE job_seekar(job_seekar_id        NUMBER(10)    PRIMARY KEY
                       ,candidate_full_name  VARCHAR2(100) NOT NULL
                       ,candidate_email_id   VARCHAR2(100) UNIQUE NOT NULL
                       ,mobile_number        VARCHAR2(15)  UNIQUE
                       ,qualification        NUMBER(10)    NOT NULL
                       ,skills               VARCHAR2(50)
                       ,status               VARCHAR2(100)
                       ,created_at           DATE
                       );
                       
                       
CREATE TABLE employers (employer_id        NUMBER(10)    PRIMARY KEY
                       ,employer_name      VARCHAR2(200) NOT NULL
                       ,location           VARCHAR2(100)
                       ,email_id           VARCHAR2(100) UNIQUE NOT NULL
                       ,phone_number       NUMBER(15)    UNIQUE
                       ,registration_date  DATE
                       ,status             VARCHAR2(50)
                       ,actions            VARCHAR2(50)
                        );
    

CREATE TABLE job_posting(job_id           NUMBER(10)    PRIMARY KEY
                        ,job_title        VARCHAR2(100) NOT NULL
                        ,recruiter_id     NUMBER(10)
                        ,location         VARCHAR2(100)
                        ,salary           NUMBER(10)
                        ,employment_type  VARCHAR2(100)
                        ,experience_level VARCHAR2(100)
                        ,deadline         DATE
                        ,posted_date      DATE
                        ,status           VARCHAR2(100)
                        ,actions          VARCHAR2(100)
                        ,FOREIGN KEY(recruiter_id)REFERENCES employers(employer_id)
                         );
    
