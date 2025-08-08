-- 1. Count total number of students
SELECT COUNT(*) AS TotalStudents FROM students;

-- 2. Count number of enrollments per course
SELECT CourseID, COUNT(*) AS TotalEnrollments
FROM enrollments
GROUP BY CourseID;

-- 3. Count number of enrollments per student
SELECT StudentID, COUNT(*) AS CoursesEnrolled
FROM enrollments
GROUP BY StudentID;

-- 4. Count how many unique instructors are there
SELECT COUNT(DISTINCT Instructor) AS UniqueInstructors
FROM courses;

-- 5. Find the latest enrollment date for each course
SELECT CourseID, MAX(EnrollmentDate) AS LatestEnrollment
FROM enrollments
GROUP BY CourseID;

-- 6. Average enrollments per course (assuming each row is one enrollment)
SELECT CourseID, COUNT(*) AS TotalEnrollments
FROM enrollments
GROUP BY CourseID
HAVING COUNT(*) >= 2;

-- 7. Round example: simulate average enrollments (rounded)
SELECT CourseID, ROUND(COUNT(*) / 1.0, 2) AS AvgEnrollments
FROM enrollments
GROUP BY CourseID;

-- 8. Get courses and how many students are enrolled in each
SELECT c.CourseName, COUNT(e.StudentID) AS NumOfStudents
FROM courses c
JOIN enrollments e ON c.CourseID = e.CourseID
GROUP BY c.CourseName;

-- 9. Get students who enrolled in more than one course
SELECT s.Name, COUNT(e.CourseID) AS CourseCount
FROM students s
JOIN enrollments e ON s.StudentID = e.StudentID
GROUP BY s.Name
HAVING COUNT(e.CourseID) > 1;

-- count of unique instructor
SELECT COUNT(DISTINCT Instructor) AS UniqueInstructors
FROM courses;

-- course with more than 1 enrollment
SELECT CourseID, COUNT(*) AS TotalEnrollments
FROM enrollments
GROUP BY CourseID
HAVING COUNT(*) >= 2;


