
# 🧾 Online Resume Builder (MySQL Only)

This project implements the backend logic and data structure for a **MySQL-only Online Resume Builder**, without any frontend or application code. It supports user management, resume creation, templates, sections, data input, versioning, export preparation, audit logging, and optional advanced features like tags, multi-language support, and collaboration.

---

## 📁 Project Structure

| File/Folder | Description |
|-------------|-------------|
| `schema.sql` | DDL script to create all tables |
| `sample_data.sql` | Sample data insertions |
| `views.sql` | Views for resume export and version comparison |
| `procedures.sql` | Stored procedures for creating resumes, saving versions, etc. |
| `functions.sql` | Reusable functions like `get_latest_version()` |
| `triggers.sql` | Triggers for audit logs on section edits |
| `README.md` | Project explanation and usage |
| `er_diagram.png` | Entity-Relationship Diagram |
| `improvement_procedure.sql` | Bonus logic to suggest missing resume sections |

---

## 🧠 Core Features Implemented

### ✅ User Management
- Users can register with username, email, and password hash

### ✅ Templates
- Multiple resume templates supported

### ✅ Section Management
- Education, Work Experience, Skills, Projects, Certifications, etc.
- Dynamic ordering via `position`

### ✅ Resume Creation
- Create resume
- Add or remove sections dynamically

### ✅ Data Input
- Store user input for each section (e.g., experience content, skill details)

### ✅ Versioning
- Save and list different versions of the same resume

### ✅ Resume Export
- View to simulate export to PDF using `resume_export_view`

### ✅ Audit Logging
- Tracks insert/update actions on section entries with user and timestamp

---

## 🏗️ Bonus Features

- Multi-language resume support via `Languages` and `Resume_Languages`
- Skill tagging using `Tags` and `Entry_Tags`
- Collaborative editing via `Collaborators` table
- Soft delete for resumes and sections using `is_deleted` flag
- Resume improvement suggestions via stored procedure `suggest_resume_improvements`

---

## 🔧 How to Use

### 1. Setup

Run all scripts in the following order:
```sql
SOURCE schema.sql;
SOURCE sample_data.sql;
SOURCE functions.sql;
SOURCE procedures.sql;
SOURCE triggers.sql;
SOURCE views.sql;
SOURCE improvement_procedure.sql;
````

### 2. Sample Usage

#### Create Resume

```sql
CALL create_resume(1, 1);
```

#### Add Section to Resume

```sql
CALL add_section_to_resume(1, 2, 1);
```

#### Save Resume Version

```sql
CALL save_resume_version(1);
```

#### Export Resume

```sql
SELECT * FROM resume_export_view WHERE username = 'john_doe';
```

#### Get Resume Suggestions

```sql
CALL suggest_resume_improvements(1);
```

---

## 🗂️ ER Diagram

Refer to `er_diagram.png` for visual representation of entities and relationships.

---

## 🧠 Tech Requirements

* MySQL 8.0+
* No application or frontend code
* Only SQL (DDL, DML, functions, triggers, views, stored procedures)

---

## 📋 Author

Surendra Kumawat
Project submitted for DevifyX MySQL Core Assignment

```

---

Let me know if you'd like:
- A downloadable `.md` or `.pdf` file of this README
- The actual `.sql` script combining all modules
- Help uploading to GitHub or as a ZIP

Just say the word!
```
