-- Schema ve kullanıcı oluşturma PostgreSQL için gerekli değil, doğrudan veritabanı ve rol/yetkilendirme kullanılabilir

-- Veritabanında 'dating' schema oluşturma (eğer default schema kullanılmayacaksa)
CREATE SCHEMA dating;





CREATE TABLE dating.profiles (
                                 PRO_ID serial PRIMARY KEY,
                                 PRO_NAME varchar(100) NOT NULL,
                                 PRO_BRE_ID int REFERENCES dating.breeds (BRE_ID),
                                 PRO_HEIGHT int,
                                 PRO_WEIGHT int,
                                 PRO_DESCRIPTION varchar(4000),
                                 PRO_IMAGE_URL varchar(100)
);

-- PostgreSQL'de index oluşturma (eğer gerekliyse)
CREATE INDEX IX_PRO_BRE_ID ON dating.profiles (PRO_BRE_ID);
