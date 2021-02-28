const BASE_URL = "http://localhost:3000"
const USERS_URL = `${BASE_URL}/users`
const UNASSIGNED_URL = `${BASE_URL}/subtasks`
const USERTASKS_URL = `${BASE_URL}/user_tasks`
const MAIN = document.querySelector('main')

//This will hold usertask objects that can be deleted
class UserTaskAssigned {
    constructor(usertask_id, subtask_id) {
      this._usertask_id = usertask_id;
      this._subtask_id = subtask_id;
    }

    get usertask_id() {
        return this._usertask_id;
      }

    get subtask_id() {
        return this._subtask_id;
    }

  }

  //This will hold usertask objects that will be added
  class UserTaskUnassigned {
    constructor(subtask_id, subtaskName, user_ids) {
      this._subtask_id = subtask_id;
      this._subtaskName = subtaskName;
      this._user_ids = user_ids;
    }

    get user_ids() {
        this._usertask_ids;
      }

    get subtask_id() {
        this._subtask_id;
    }

    get subtaskName() {
        this._subtaskName;
    }

  }


document.addEventListener("DOMContentLoaded", function() {
    loadAllUsers();
    loadUnassignedSubtasks();
});


function loadUnassignedSubtasks() {

    let div = document.createElement('div');
    let p = document.createElement('p');
    let ul = document.createElement('ul');
    MAIN.appendChild(div);
    div.appendChild(p);
    div.appendChild(ul);
    div.classList.add("subtask");
    p.innerText = "Unassigned Tasks:";

    fetch(UNASSIGNED_URL)
    .then(res => res.json())
    .then(results => {
       results.data.forEach(displaySubtasks, ul)
        }).catch(function(error) {
        console.log(error);
    });
  }

  function displaySubtasks(value){
      console.log(value.attributes.title)
      let li = document.createElement('li');
        li.innerText = value.attributes.title;
        this.appendChild(li);
  }


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
    div.classList.add("user");
    p.innerText = value.attributes.username + "'s Tasks for Today: ";

    // console.log(value.id)
    loadUserTasks(value.id, ul);
}

function loadUserTasks(userid, ul){

    fetch(USERTASKS_URL)
    .then(res => res.json())
    .then(results => {
        //put into an array where the user id is same as user id passed in
       usertasks = results.data.filter(function(e){
        return e.relationships.user.data.id === userid
       })

       let usertasksObjs = usertasks.map( function(usertask) {
            return new UserTaskAssigned(usertask.id, usertask.relationships.subtask.data.id);
       })
       
    //    console.log(usertasksObjs[0].subtask_id);
  
       subtasks = results.included;
        // console.log(usertasks);
       displayUserTasks(usertasksObjs, subtasks, ul);

        }).catch(function(error) {
            console.log(error);
        });
    
}

function displayUserTasks(usertasksObjs, subtasks, ul){
    // console.log(usertasks);
    // console.log(subtasks);

    let subtaskNames = usertasksObjs.map(
        function(usertask) {
            // console.log(usertask.relationships.subtask.data.id);
            let st = subtasks.find(function(subtask){
                // console.log(subtask.id)
                // console.log(usertask.subtask_id)
                return subtask.id === usertask.subtask_id;
            });
            return st.attributes.title;
        }
    );

    // let userTasksIds = usertasks.map(usertask =>() {usertask.id}
    // console.log(userTasjsIds)
    // console.log(subtaskNames);

    subtaskNames.forEach(function(element, index){
        let li = document.createElement('li');
        let button = document.createElement('button');
        li.innerText = element;
        ul.appendChild(li);
        li.appendChild(button);
        button.innerText = "Unassign";
        console.log(index);
        button.setAttribute('data-id' , usertasksObjs[index].usertask_id); 
        button.addEventListener('click', deleteUserTask);
    });

}

function deleteUserTask(event) {

}


















