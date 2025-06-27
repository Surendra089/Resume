-- Bonus Features

-- 1. Multi-language Support

CREATE TABLE Languages (
    language_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE
);


-- Resume_Languages Table (many-to-many)

CREATE TABLE Resume_Languages (
    resume_id INT,
    language_id INT,
    PRIMARY KEY (resume_id, language_id),
    FOREIGN KEY (resume_id) REFERENCES Resumes(resume_id),
    FOREIGN KEY (language_id) REFERENCES Languages(language_id)
);

-- 2. Tagging Skills

CREATE TABLE Tags (
    tag_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE
);

-- Entry_Tags Table (map tags to section entries)

CREATE TABLE Entry_Tags (
    entry_id INT,
    tag_id INT,
    PRIMARY KEY (entry_id, tag_id),
    FOREIGN KEY (entry_id) REFERENCES Section_Entries(entry_id),
    FOREIGN KEY (tag_id) REFERENCES Tags(tag_id)
);

-- 3. Collaborative Editing

CREATE TABLE Collaborators (
    collaborator_id INT AUTO_INCREMENT PRIMARY KEY,
    resume_id INT,
    user_id INT,
    role ENUM('owner', 'editor', 'viewer') DEFAULT 'editor',
    added_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (resume_id) REFERENCES Resumes(resume_id),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

CREATE TABLE Collaborators1 (
    collaborator_id INT AUTO_INCREMENT PRIMARY KEY,
    resume_id INT,
    user_id INT,
    role ENUM('owner', 'editor', 'viewer') DEFAULT 'editor',
    added_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (resume_id) REFERENCES Resumes(resume_id),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

