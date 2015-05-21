require 'test_helper'

class TaskTest < ActiveSupport::TestCase

  def setup
    @user = users(:user1)
    @task = @user.owned_tasks.create(summary:"Loren ipsum")
  end

  test "must have an owner and a summary" do
    bad_task = Task.new
    refute(bad_task.save)

    bad_task = @user.owned_tasks.build # no summary
    refute(bad_task.save)

  end

  test "tasks can be assigned to user" do
    user2 = users(:user2)
    refute_includes(user2.assigned_tasks, @task)
    assert(@task.update(assignee:user2))

    assert_includes(user2.reload.assigned_tasks, @task)
  end

  test "tasks are deleted when owner user is deleted" do
    task_id = @task.id
    refute_nil(task_id)
    assert_includes(@user.owned_tasks, @task)
    @user.destroy
    assert_raises(ActiveRecord::RecordNotFound) { @task.reload }

  end

  test "assignee is null when assignee user is deleted" do
    user2 = users(:user2)
    refute_includes(user2.assigned_tasks, @task)
    assert(@task.update(assignee:user2))

    assert_includes(user2.reload.assigned_tasks, @task)

    user2.destroy
    assert_nil(@task.reload.assignee)
  end
end
