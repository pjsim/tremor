require 'thor'
require_relative 'task'
require_relative 'actions'

module Tremor
  class TremorCli < Thor
    desc "add LIST TASK", "add a TASK to LIST"
    long_desc <<-ADD_LIST_TASK
    `add LIST TASK` will create a new task under a list of your choosing.
    ADD_LIST_TASK
    def add list, info
      add_task list, info
    end

    desc "list LIST", "read a LIST" # ls | ls bl etc
    def list list="all"
      read_list list
    end

    desc "move TASK LIST", "move TASK to LIST" # mv TASK bl
    def move task, list
      move_task task, list
    end

    desc "remove TASKID", "remove TASK with TASKID" #rm TASK
    def remove task
      remove_task task
    end

    desc "empty", "Empty all lists" # clr | clr bl etc
    def empty
      empty_lists
    end
  end
end
