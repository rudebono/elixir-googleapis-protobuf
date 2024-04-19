defmodule Google.Chat.V1.Membership.MembershipState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :MEMBERSHIP_STATE_UNSPECIFIED, 0
  field :JOINED, 1
  field :INVITED, 2
  field :NOT_A_MEMBER, 3
end

defmodule Google.Chat.V1.Membership.MembershipRole do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :MEMBERSHIP_ROLE_UNSPECIFIED, 0
  field :ROLE_MEMBER, 1
  field :ROLE_MANAGER, 2
end

defmodule Google.Chat.V1.Membership do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :memberType, 0

  field :name, 1, type: :string, deprecated: false
  field :state, 2, type: Google.Chat.V1.Membership.MembershipState, enum: true, deprecated: false
  field :role, 7, type: Google.Chat.V1.Membership.MembershipRole, enum: true, deprecated: false
  field :member, 3, type: Google.Chat.V1.User, oneof: 0
  field :group_member, 5, type: Google.Chat.V1.Group, json_name: "groupMember", oneof: 0

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :delete_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "deleteTime",
    deprecated: false
end

defmodule Google.Chat.V1.CreateMembershipRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :membership, 2, type: Google.Chat.V1.Membership, deprecated: false
end

defmodule Google.Chat.V1.UpdateMembershipRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :membership, 1, type: Google.Chat.V1.Membership, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Chat.V1.ListMembershipsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 5, type: :string, deprecated: false
  field :show_groups, 6, type: :bool, json_name: "showGroups", deprecated: false
  field :show_invited, 7, type: :bool, json_name: "showInvited", deprecated: false
end

defmodule Google.Chat.V1.ListMembershipsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :memberships, 1, repeated: true, type: Google.Chat.V1.Membership, deprecated: false
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Chat.V1.GetMembershipRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Chat.V1.DeleteMembershipRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end