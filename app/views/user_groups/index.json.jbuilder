# frozen_string_literal: true

json.array! @user_groups, partial: 'user_groups/user_group', as: :user_group
