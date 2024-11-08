document.addEventListener("DOMContentLoaded", () => {
    loadCourses();
});

function loadCourses() {
    const courseList = document.getElementById("course-list");
    const courses = [
        { title: "Python for Beginners", description: "Master Python programming from scratch!" },
        { title: "Web Development Bootcamp", description: "Become a web developer with this intensive bootcamp." }
    ];

    courses.forEach(course => {
        const courseItem = document.createElement("div");
        courseItem.className = "course";
        courseItem.innerHTML = `
            <h3>${course.title}</h3>
            <p>${course.description}</p>
            <button onclick="window.location.href='payment.html'" class="btn-course">Enroll Now</button>
        `;
        courseList.appendChild(courseItem);
    });
}
