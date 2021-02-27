const BASE_URL = "http://localhost:3000"
const USERS_URL = `${BASE_URL}/users`
const UNASSIGNED_URL = `${BASE_URL}/subtasks`
const USERTASKS_URL = `${BASE_URL}/user_tasks`
const MAIN = document.querySelector('main');

document.addEventListener("DOMContentLoaded", function() {
  loadAllUsers();
});

function loadAllUsers() {
    fetch(USERS_URL)
    .then(res => res.json())
    .then(results => {
       results.data.forEach(displayUsers)
        }).catch(function(error) {
        console.log(error);
    });
  };

function displayUsers(value) {
    // console.log(value.attributes.username)
    let div = document.createElement('div');
    let p = document.createElement('p');
    let ul = document.createElement('ul');

    MAIN.appendChild(div);
    div.appendChild(p);
    div.appendChild(ul);
    div.classList.add("card");
    p.innerText = value.attributes.username + "'s Tasks";

    // loadUserTasks(value.attributes.id)
};

// function loadUserTasks(userid){
//     fetch(USERS_URL)
//     .then(res => res.json())
//     .then(results => {
//        results.data.forEach(
           
//         displayTrainers)
//         }).catch(function(error) {
//             console.log(error);
//         });
    
// }