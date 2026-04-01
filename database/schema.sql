-- =====================================================
-- Lookup tables for categorical attributes
-- =====================================================

DROP DATABASE IF EXISTS HouseDB;
CREATE DATABASE HouseDB;
USE HouseDB;

-- =====================================================================
-- Create a staging table to get all the data from csv and accepts nulls 
-- =====================================================================


CREATE TABLE house_staging (
    Id                   INT UNSIGNED,
    MSSubClass           SMALLINT UNSIGNED,
    MSZoning             VARCHAR(10),
    LotFrontage          SMALLINT UNSIGNED,
    LotArea              MEDIUMINT UNSIGNED,
    Street               VARCHAR(10),
    Alley                VARCHAR(10),
    LotShape             VARCHAR(10),
    LandContour          VARCHAR(10),
    Utilities            VARCHAR(20),
    LotConfig            VARCHAR(10),
    LandSlope            VARCHAR(10),
    Neighborhood         VARCHAR(40),
    Condition1           VARCHAR(20),
    Condition2           VARCHAR(20),
    BldgType             VARCHAR(10),
    HouseStyle           VARCHAR(10),
    OverallQual          TINYINT UNSIGNED,
    OverallCond          TINYINT UNSIGNED,
    YearBuilt            SMALLINT UNSIGNED,
    YearRemodAdd         SMALLINT UNSIGNED,
    RoofStyle            VARCHAR(10),
    RoofMatl             VARCHAR(20),
    Exterior1st          VARCHAR(20),
    Exterior2nd          VARCHAR(20),
    MasVnrType           VARCHAR(20),
    MasVnrArea           MEDIUMINT UNSIGNED,
    ExterQual            VARCHAR(2),
    ExterCond            VARCHAR(2),
    Foundation           VARCHAR(10),
    BsmtQual             VARCHAR(2),
    BsmtCond             VARCHAR(2),
    BsmtExposure         VARCHAR(2),
    BsmtFinType1         VARCHAR(3),
    BsmtFinSF1           MEDIUMINT UNSIGNED,
    BsmtFinType2         VARCHAR(3),
    BsmtFinSF2           MEDIUMINT UNSIGNED,
    BsmtUnfSF            MEDIUMINT UNSIGNED,
    TotalBsmtSF          MEDIUMINT UNSIGNED,
    Heating              VARCHAR(10),
    HeatingQC            VARCHAR(2),
    CentralAir           CHAR(1),
    Electrical           VARCHAR(10),
    `1stFlrSF`           MEDIUMINT UNSIGNED,
    `2ndFlrSF`           MEDIUMINT UNSIGNED,
    LowQualFinSF         MEDIUMINT UNSIGNED,
    GrLivArea            MEDIUMINT UNSIGNED,
    BsmtFullBath         TINYINT UNSIGNED,
    BsmtHalfBath         TINYINT UNSIGNED,
    FullBath             TINYINT UNSIGNED,
    HalfBath             TINYINT UNSIGNED,
    BedroomAbvGr         TINYINT UNSIGNED,
    KitchenAbvGr         TINYINT UNSIGNED,
    KitchenQual          VARCHAR(2),
    TotRmsAbvGrd         TINYINT UNSIGNED,
    Functional           VARCHAR(10),
    Fireplaces           TINYINT UNSIGNED,
    FireplaceQu          VARCHAR(2),
    GarageType           VARCHAR(10),
    GarageYrBlt          SMALLINT UNSIGNED,
    GarageFinish         VARCHAR(3),
    GarageCars           TINYINT UNSIGNED,
    GarageArea           SMALLINT UNSIGNED,
    GarageQual           VARCHAR(2),
    GarageCond           VARCHAR(2),
    PavedDrive           CHAR(1),
    WoodDeckSF           MEDIUMINT UNSIGNED,
    OpenPorchSF          MEDIUMINT UNSIGNED,
    EnclosedPorch        MEDIUMINT UNSIGNED,
    `3SsnPorch`          MEDIUMINT UNSIGNED,
    ScreenPorch          MEDIUMINT UNSIGNED,
    PoolArea             MEDIUMINT UNSIGNED,
    PoolQC               VARCHAR(2),
    Fence                VARCHAR(10),
    MiscFeature          VARCHAR(10),
    MiscVal              MEDIUMINT UNSIGNED,
    MoSold               TINYINT UNSIGNED,
    YrSold               SMALLINT UNSIGNED,
    SaleType             VARCHAR(10),
    SaleCondition        VARCHAR(20),
    SalePrice            INT UNSIGNED
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



CREATE TABLE ms_zoning (
    id          TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    code        VARCHAR(10) NOT NULL UNIQUE,
    description VARCHAR(100)
);

CREATE TABLE street (
    id   TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    code VARCHAR(10) NOT NULL UNIQUE
);

CREATE TABLE alley (
    id   TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    code VARCHAR(10) NOT NULL UNIQUE
);

CREATE TABLE lot_shape (
    id   TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    code VARCHAR(10) NOT NULL UNIQUE,
    description VARCHAR(50)
);

CREATE TABLE land_contour (
    id   TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    code VARCHAR(10) NOT NULL UNIQUE
);

CREATE TABLE utilities (
    id   TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    code VARCHAR(20) NOT NULL UNIQUE
);

CREATE TABLE lot_config (
    id   TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    code VARCHAR(10) NOT NULL UNIQUE
);

CREATE TABLE land_slope (
    id   TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    code VARCHAR(10) NOT NULL UNIQUE
);

CREATE TABLE neighborhood (
    id   SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(40) NOT NULL UNIQUE
);

CREATE TABLE condition (
    id   TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    code VARCHAR(20) NOT NULL UNIQUE
);

CREATE TABLE bldg_type (
    id   TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    code VARCHAR(10) NOT NULL UNIQUE,
    description VARCHAR(50)
);

CREATE TABLE house_style (
    id   TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    code VARCHAR(10) NOT NULL UNIQUE
);

CREATE TABLE roof_style (
    id   TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    code VARCHAR(10) NOT NULL UNIQUE
);

CREATE TABLE roof_material (
    id   TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    code VARCHAR(20) NOT NULL UNIQUE
);

CREATE TABLE exterior (
    id   TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    code VARCHAR(20) NOT NULL UNIQUE
);

CREATE TABLE mas_vnr_type (
    id   TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    code VARCHAR(20) NOT NULL UNIQUE
);

CREATE TABLE exter_quality (
    id   TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    code VARCHAR(2) NOT NULL UNIQUE,
    description VARCHAR(20)
);

CREATE TABLE exter_condition (
    id   TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    code VARCHAR(2) NOT NULL UNIQUE,
    description VARCHAR(20)
);

CREATE TABLE foundation (
    id   TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    code VARCHAR(10) NOT NULL UNIQUE
);

CREATE TABLE bsmt_quality (
    id   TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    code VARCHAR(2) NOT NULL UNIQUE,
    description VARCHAR(20)
);

CREATE TABLE bsmt_condition (
    id   TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    code VARCHAR(2) NOT NULL UNIQUE,
    description VARCHAR(20)
);

CREATE TABLE bsmt_exposure (
    id   TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    code VARCHAR(2) NOT NULL UNIQUE,
    description VARCHAR(30)
);

CREATE TABLE bsmt_fin_type (
    id   TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    code VARCHAR(3) NOT NULL UNIQUE,
    description VARCHAR(30)
);

CREATE TABLE heating (
    id   TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    code VARCHAR(10) NOT NULL UNIQUE
);

CREATE TABLE heating_qc (
    id   TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    code VARCHAR(2) NOT NULL UNIQUE,
    description VARCHAR(20)
);

CREATE TABLE central_air (
    id   TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    code CHAR(1) NOT NULL UNIQUE   -- 'Y' or 'N'
);

CREATE TABLE electrical (
    id   TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    code VARCHAR(10) NOT NULL UNIQUE
);

CREATE TABLE kitchen_quality (
    id   TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    code VARCHAR(2) NOT NULL UNIQUE,
    description VARCHAR(20)
);

CREATE TABLE functional (
    id   TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    code VARCHAR(10) NOT NULL UNIQUE,
    description VARCHAR(50)
);

CREATE TABLE fireplace_quality (
    id   TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    code VARCHAR(2) NOT NULL UNIQUE,
    description VARCHAR(20)
);

CREATE TABLE garage_type (
    id   TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    code VARCHAR(10) NOT NULL UNIQUE
);

CREATE TABLE garage_finish (
    id   TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    code VARCHAR(3) NOT NULL UNIQUE,
    description VARCHAR(30)
);

CREATE TABLE garage_quality (
    id   TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    code VARCHAR(2) NOT NULL UNIQUE,
    description VARCHAR(20)
);

CREATE TABLE garage_condition (
    id   TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    code VARCHAR(2) NOT NULL UNIQUE,
    description VARCHAR(20)
);

CREATE TABLE paved_drive (
    id   TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    code CHAR(1) NOT NULL UNIQUE,   -- 'Y', 'N', 'P' (Paved)
    description VARCHAR(20)
);

CREATE TABLE pool_qc (
    id   TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    code VARCHAR(2) NOT NULL UNIQUE,
    description VARCHAR(20)
);

CREATE TABLE fence (
    id   TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    code VARCHAR(10) NOT NULL UNIQUE,
    description VARCHAR(30)
);

CREATE TABLE misc_feature (
    id   TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    code VARCHAR(10) NOT NULL UNIQUE,
    description VARCHAR(50)
);

CREATE TABLE sale_type (
    id   TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    code VARCHAR(10) NOT NULL UNIQUE
);

CREATE TABLE sale_condition (
    id   TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    code VARCHAR(20) NOT NULL UNIQUE
);

-- =====================================================
-- Main table: house
-- =====================================================

CREATE TABLE house (
    id                    INT UNSIGNED NOT NULL PRIMARY KEY,   -- original Id from CSV

    -- Foreign keys to lookup tables
    ms_zoning_id          TINYINT UNSIGNED NOT NULL,
    street_id             TINYINT UNSIGNED NOT NULL,
    alley_id              TINYINT UNSIGNED,                    -- nullable
    lot_shape_id          TINYINT UNSIGNED NOT NULL,
    land_contour_id       TINYINT UNSIGNED NOT NULL,
    utilities_id          TINYINT UNSIGNED NOT NULL,
    lot_config_id         TINYINT UNSIGNED NOT NULL,
    land_slope_id         TINYINT UNSIGNED NOT NULL,
    neighborhood_id       SMALLINT UNSIGNED NOT NULL,
    condition1_id         TINYINT UNSIGNED NOT NULL,
    condition2_id         TINYINT UNSIGNED NOT NULL,
    bldg_type_id          TINYINT UNSIGNED NOT NULL,
    house_style_id        TINYINT UNSIGNED NOT NULL,
    roof_style_id         TINYINT UNSIGNED NOT NULL,
    roof_material_id      TINYINT UNSIGNED NOT NULL,
    exterior1st_id        TINYINT UNSIGNED NOT NULL,
    exterior2nd_id        TINYINT UNSIGNED NOT NULL,
    mas_vnr_type_id       TINYINT UNSIGNED,                    -- nullable
    exter_qual_id         TINYINT UNSIGNED NOT NULL,
    exter_cond_id         TINYINT UNSIGNED NOT NULL,
    foundation_id         TINYINT UNSIGNED NOT NULL,
    bsmt_qual_id          TINYINT UNSIGNED,                    -- nullable
    bsmt_cond_id          TINYINT UNSIGNED,                    -- nullable
    bsmt_exposure_id      TINYINT UNSIGNED,                    -- nullable
    bsmt_fin_type1_id     TINYINT UNSIGNED,                    -- nullable
    bsmt_fin_type2_id     TINYINT UNSIGNED,                    -- nullable
    heating_id            TINYINT UNSIGNED NOT NULL,
    heating_qc_id         TINYINT UNSIGNED NOT NULL,
    central_air_id        TINYINT UNSIGNED NOT NULL,
    electrical_id         TINYINT UNSIGNED NOT NULL,
    kitchen_qual_id       TINYINT UNSIGNED NOT NULL,
    functional_id         TINYINT UNSIGNED NOT NULL,
    fireplace_qu_id       TINYINT UNSIGNED,                    -- nullable
    garage_type_id        TINYINT UNSIGNED,                    -- nullable
    garage_finish_id      TINYINT UNSIGNED,                    -- nullable
    garage_qual_id        TINYINT UNSIGNED,                    -- nullable
    garage_cond_id        TINYINT UNSIGNED,                    -- nullable
    paved_drive_id        TINYINT UNSIGNED NOT NULL,
    pool_qc_id            TINYINT UNSIGNED,                    -- nullable
    fence_id              TINYINT UNSIGNED,                    -- nullable
    misc_feature_id       TINYINT UNSIGNED,                    -- nullable
    sale_type_id          TINYINT UNSIGNED NOT NULL,
    sale_condition_id     TINYINT UNSIGNED NOT NULL,

    -- Numeric / continuous fields (kept in main table)
    ms_sub_class          SMALLINT UNSIGNED NOT NULL,
    lot_frontage          SMALLINT UNSIGNED,                   -- nullable
    lot_area              MEDIUMINT UNSIGNED NOT NULL,
    overall_qual          TINYINT UNSIGNED NOT NULL,
    overall_cond          TINYINT UNSIGNED NOT NULL,
    year_built            SMALLINT UNSIGNED NOT NULL,
    year_remod_add        SMALLINT UNSIGNED NOT NULL,
    mas_vnr_area          MEDIUMINT UNSIGNED,                  -- nullable
    bsmt_fin_sf1          MEDIUMINT UNSIGNED,                  -- nullable
    bsmt_fin_sf2          MEDIUMINT UNSIGNED,                  -- nullable
    bsmt_unf_sf           MEDIUMINT UNSIGNED,                  -- nullable
    total_bsmt_sf         MEDIUMINT UNSIGNED,                  -- nullable
    first_flr_sf          MEDIUMINT UNSIGNED NOT NULL,
    second_flr_sf         MEDIUMINT UNSIGNED NOT NULL,
    low_qual_fin_sf       MEDIUMINT UNSIGNED NOT NULL,
    gr_liv_area           MEDIUMINT UNSIGNED NOT NULL,
    bsmt_full_bath        TINYINT UNSIGNED,                    -- nullable
    bsmt_half_bath        TINYINT UNSIGNED,                    -- nullable
    full_bath             TINYINT UNSIGNED NOT NULL,
    half_bath             TINYINT UNSIGNED NOT NULL,
    bedroom_abv_gr        TINYINT UNSIGNED NOT NULL,
    kitchen_abv_gr        TINYINT UNSIGNED NOT NULL,
    tot_rms_abv_grd       TINYINT UNSIGNED NOT NULL,
    fireplaces            TINYINT UNSIGNED NOT NULL,
    garage_yr_blt         SMALLINT UNSIGNED,                   -- nullable
    garage_cars           TINYINT UNSIGNED NOT NULL,
    garage_area           SMALLINT UNSIGNED NOT NULL,
    wood_deck_sf          MEDIUMINT UNSIGNED NOT NULL,
    open_porch_sf         MEDIUMINT UNSIGNED NOT NULL,
    enclosed_porch        MEDIUMINT UNSIGNED NOT NULL,
    three_season_porch    MEDIUMINT UNSIGNED NOT NULL,
    screen_porch          MEDIUMINT UNSIGNED NOT NULL,
    pool_area             MEDIUMINT UNSIGNED NOT NULL,
    misc_val              MEDIUMINT UNSIGNED NOT NULL,
    mo_sold               TINYINT UNSIGNED NOT NULL,
    yr_sold               SMALLINT UNSIGNED NOT NULL,
    sale_price            INT UNSIGNED NOT NULL,

    -- Foreign key constraints
    CONSTRAINT fk_house_ms_zoning      FOREIGN KEY (ms_zoning_id)      REFERENCES ms_zoning(id),
    CONSTRAINT fk_house_street          FOREIGN KEY (street_id)         REFERENCES street(id),
    CONSTRAINT fk_house_alley           FOREIGN KEY (alley_id)          REFERENCES alley(id),
    CONSTRAINT fk_house_lot_shape       FOREIGN KEY (lot_shape_id)      REFERENCES lot_shape(id),
    CONSTRAINT fk_house_land_contour    FOREIGN KEY (land_contour_id)   REFERENCES land_contour(id),
    CONSTRAINT fk_house_utilities       FOREIGN KEY (utilities_id)      REFERENCES utilities(id),
    CONSTRAINT fk_house_lot_config      FOREIGN KEY (lot_config_id)     REFERENCES lot_config(id),
    CONSTRAINT fk_house_land_slope      FOREIGN KEY (land_slope_id)     REFERENCES land_slope(id),
    CONSTRAINT fk_house_neighborhood    FOREIGN KEY (neighborhood_id)   REFERENCES neighborhood(id),
    CONSTRAINT fk_house_condition1      FOREIGN KEY (condition1_id)     REFERENCES condition(id),
    CONSTRAINT fk_house_condition2      FOREIGN KEY (condition2_id)     REFERENCES condition(id),
    CONSTRAINT fk_house_bldg_type       FOREIGN KEY (bldg_type_id)      REFERENCES bldg_type(id),
    CONSTRAINT fk_house_house_style     FOREIGN KEY (house_style_id)    REFERENCES house_style(id),
    CONSTRAINT fk_house_roof_style      FOREIGN KEY (roof_style_id)     REFERENCES roof_style(id),
    CONSTRAINT fk_house_roof_material   FOREIGN KEY (roof_material_id)  REFERENCES roof_material(id),
    CONSTRAINT fk_house_exterior1st     FOREIGN KEY (exterior1st_id)    REFERENCES exterior(id),
    CONSTRAINT fk_house_exterior2nd     FOREIGN KEY (exterior2nd_id)    REFERENCES exterior(id),
    CONSTRAINT fk_house_mas_vnr_type    FOREIGN KEY (mas_vnr_type_id)   REFERENCES mas_vnr_type(id),
    CONSTRAINT fk_house_exter_qual      FOREIGN KEY (exter_qual_id)     REFERENCES exter_quality(id),
    CONSTRAINT fk_house_exter_cond      FOREIGN KEY (exter_cond_id)     REFERENCES exter_condition(id),
    CONSTRAINT fk_house_foundation      FOREIGN KEY (foundation_id)     REFERENCES foundation(id),
    CONSTRAINT fk_house_bsmt_qual       FOREIGN KEY (bsmt_qual_id)      REFERENCES bsmt_quality(id),
    CONSTRAINT fk_house_bsmt_cond       FOREIGN KEY (bsmt_cond_id)      REFERENCES bsmt_condition(id),
    CONSTRAINT fk_house_bsmt_exposure   FOREIGN KEY (bsmt_exposure_id)  REFERENCES bsmt_exposure(id),
    CONSTRAINT fk_house_bsmt_fin_type1  FOREIGN KEY (bsmt_fin_type1_id) REFERENCES bsmt_fin_type(id),
    CONSTRAINT fk_house_bsmt_fin_type2  FOREIGN KEY (bsmt_fin_type2_id) REFERENCES bsmt_fin_type(id),
    CONSTRAINT fk_house_heating         FOREIGN KEY (heating_id)        REFERENCES heating(id),
    CONSTRAINT fk_house_heating_qc      FOREIGN KEY (heating_qc_id)     REFERENCES heating_qc(id),
    CONSTRAINT fk_house_central_air     FOREIGN KEY (central_air_id)    REFERENCES central_air(id),
    CONSTRAINT fk_house_electrical      FOREIGN KEY (electrical_id)     REFERENCES electrical(id),
    CONSTRAINT fk_house_kitchen_qual    FOREIGN KEY (kitchen_qual_id)   REFERENCES kitchen_quality(id),
    CONSTRAINT fk_house_functional      FOREIGN KEY (functional_id)     REFERENCES functional(id),
    CONSTRAINT fk_house_fireplace_qu    FOREIGN KEY (fireplace_qu_id)   REFERENCES fireplace_quality(id),
    CONSTRAINT fk_house_garage_type     FOREIGN KEY (garage_type_id)    REFERENCES garage_type(id),
    CONSTRAINT fk_house_garage_finish   FOREIGN KEY (garage_finish_id)  REFERENCES garage_finish(id),
    CONSTRAINT fk_house_garage_qual     FOREIGN KEY (garage_qual_id)    REFERENCES garage_quality(id),
    CONSTRAINT fk_house_garage_cond     FOREIGN KEY (garage_cond_id)    REFERENCES garage_condition(id),
    CONSTRAINT fk_house_paved_drive     FOREIGN KEY (paved_drive_id)    REFERENCES paved_drive(id),
    CONSTRAINT fk_house_pool_qc         FOREIGN KEY (pool_qc_id)        REFERENCES pool_qc(id),
    CONSTRAINT fk_house_fence           FOREIGN KEY (fence_id)          REFERENCES fence(id),
    CONSTRAINT fk_house_misc_feature    FOREIGN KEY (misc_feature_id)   REFERENCES misc_feature(id),
    CONSTRAINT fk_house_sale_type       FOREIGN KEY (sale_type_id)      REFERENCES sale_type(id),
    CONSTRAINT fk_house_sale_condition  FOREIGN KEY (sale_condition_id) REFERENCES sale_condition(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;