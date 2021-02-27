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
  }

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

    // console.log(value.id)
    loadUserTasks(value.id);
}

function loadUserTasks(userid){

    fetch(USERTASKS_URL)
    .then(res => res.json())
    .then(results => {
        //put into an array where the user id is same as user id passed in
       usertasks = results.data.filter(function(e){
        return e.relationships.user.data.id === userid
       })
  
       subtasks = results.included;
        // console.log(usertasks);
       displayUserTasks(usertasks, subtasks);

        }).catch(function(error) {
            console.log(error);
        });
    
}


function displayUserTasks(usertasks, subtasks){
    // console.log(usertasks);
    // console.log(subtasks);

    let subtaskNames = usertasks.map(
        function(usertask) {
            // console.log(usertask.relationships.subtask.data.id);
            let st = subtasks.find(function(subtask){
                return subtask.id === usertask.relationships.subtask.data.id;
            });
            return st.attributes.title;
        }
    );

        // console.log(subtaskNames);

}