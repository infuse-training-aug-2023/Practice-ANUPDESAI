const user = {
    name: "Piyush Sharma",
    designation: "Senior Software Engineer",
    company: "Infuse Consulting",
    hobbies: ["Reading", " Listening to music", " Collecting stamps"]
}

const { name, designation, company, hobbies } = user;

const printUserProfile = () => {
    // Piyush Sharma is a Senior Software Engineer at Infuse Consulting. He likes Reading, Listening to music and Collecting stamps
    console.log( `${name} is a ${designation} at ${company}.He likes ${hobbies[0]},${hobbies[1]} and${hobbies[2]}`);
}

printUserProfile()

