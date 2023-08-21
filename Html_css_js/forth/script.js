const user = {
    name: "Piyush Sharma",
    designation: "Senior Software Engineer",
    company: "Infuse Consulting",
    hobbies: ["Reading", " Listening to music", " Collecting stamps"]
}

/**
 * Use destructuting to log the following
*/

const printUserProfile = () => {
    // Piyush Sharma is a Senior Software Engineer at Infuse Consulting. He likes Reading, Listening to music and Collecting stamps
    console.log( `${user.name } is a ${user.designation } at ${user.company}. He likes ${user.hobbies}`);
  
    
}

printUserProfile()

