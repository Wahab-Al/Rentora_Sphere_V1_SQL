
CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT, 
    user_id VARCHAR(50) NOT NULL UNIQUE, 
    username NVARCHAR(50) NOT NULL UNIQUE,
    name NVARCHAR(50), 
    surname NVARCHAR(50),
    email VARCHAR(155) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    role ENUM('user', 'unitOwner', 'sysManager') DEFAULT 'user',
    phone VARCHAR(25) NULL UNIQUE, 
    ownerData JSON NULL,
    isActiveAcc BOOLEAN DEFAULT TRUE,
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP, 
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    refreshToken VARCHAR(255) NULL
);

create Table units(
	id INT PRIMARY KEY AUTO_INCREMENT, 
    unit_id VARCHAR(50) NOT NULL UNIQUE,
    title VARCHAR(120) NOT NULL, 
    unitType enum('house', 'apartment', 'villa', 'studio') DEFAULT 'apartment',
    price decimal(12,2) not null,
    location varchar(120) NOT NULL,
    bedrooms int NOT NULL, bathrooms int NOT NULL, 
    unitStatus enum('available', 'rented', 'maintenance', 'reserved') DEFAULT 'available',
    `owner` varchar(50) NOT NULL,
    constraint `owner`
    foreign key (`owner`)
    references users(user_id),
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP, 
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);


create table rent_contracts(
	id INT PRIMARY KEY AUTO_INCREMENT, 
    contract_id VARCHAR(50) NOT NULL UNIQUE,
    title VARCHAR(120) NOT NULL, 
    rentBeginn  DATETIME DEFAULT CURRENT_TIMESTAMP not null,
    rentEnd  DATETIME DEFAULT CURRENT_TIMESTAMP not null,
    contractState enum('active','scheduled','expired','cancelled')  default 'scheduled' not null,
    monthRentPrice decimal (12,2) not null,
    totalContractValue decimal (12,2) not null,
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP, 
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    
    unitOwner varchar(50) NOT NULL,
    constraint unitOwner
    foreign key (unitOwner)
    references users(user_id),
    
    `user`varchar(50) NOT NULL,
    constraint `user` 
    foreign key (`user`)
    references users(user_id),
    
    unit varchar(50) NOT NULL,
    constraint unit
    foreign key (unit)
    references units(unit_id)
);

