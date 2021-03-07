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

  class User {
    constructor(user_id, username) {
      this._user_id = user_id;
      this._username = username;
    }

    get user_id() {
        return this._user_id;
      }

    get username() {
        return this._username;
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
        return this._usertask_ids;
      }

    get subtask_id() {
        return this._subtask_id;
    }

    get subtaskName() {
        return this._subtaskName;
    }

  }
