defmodule Google.Chat.V1.MembershipCreatedEventData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :membership, 1, type: Google.Chat.V1.Membership
end

defmodule Google.Chat.V1.MembershipDeletedEventData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :membership, 1, type: Google.Chat.V1.Membership
end

defmodule Google.Chat.V1.MembershipUpdatedEventData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :membership, 1, type: Google.Chat.V1.Membership
end

defmodule Google.Chat.V1.MembershipBatchCreatedEventData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :memberships, 1, repeated: true, type: Google.Chat.V1.MembershipCreatedEventData
end

defmodule Google.Chat.V1.MembershipBatchUpdatedEventData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :memberships, 1, repeated: true, type: Google.Chat.V1.MembershipUpdatedEventData
end

defmodule Google.Chat.V1.MembershipBatchDeletedEventData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :memberships, 1, repeated: true, type: Google.Chat.V1.MembershipDeletedEventData
end

defmodule Google.Chat.V1.MessageCreatedEventData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :message, 1, type: Google.Chat.V1.Message
end

defmodule Google.Chat.V1.MessageUpdatedEventData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :message, 1, type: Google.Chat.V1.Message
end

defmodule Google.Chat.V1.MessageDeletedEventData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :message, 1, type: Google.Chat.V1.Message
end

defmodule Google.Chat.V1.MessageBatchCreatedEventData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :messages, 1, repeated: true, type: Google.Chat.V1.MessageCreatedEventData
end

defmodule Google.Chat.V1.MessageBatchUpdatedEventData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :messages, 1, repeated: true, type: Google.Chat.V1.MessageUpdatedEventData
end

defmodule Google.Chat.V1.MessageBatchDeletedEventData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :messages, 1, repeated: true, type: Google.Chat.V1.MessageDeletedEventData
end

defmodule Google.Chat.V1.SpaceUpdatedEventData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :space, 1, type: Google.Chat.V1.Space
end

defmodule Google.Chat.V1.SpaceBatchUpdatedEventData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :spaces, 1, repeated: true, type: Google.Chat.V1.SpaceUpdatedEventData
end

defmodule Google.Chat.V1.ReactionCreatedEventData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :reaction, 1, type: Google.Chat.V1.Reaction
end

defmodule Google.Chat.V1.ReactionDeletedEventData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :reaction, 1, type: Google.Chat.V1.Reaction
end

defmodule Google.Chat.V1.ReactionBatchCreatedEventData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :reactions, 1, repeated: true, type: Google.Chat.V1.ReactionCreatedEventData
end

defmodule Google.Chat.V1.ReactionBatchDeletedEventData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :reactions, 1, repeated: true, type: Google.Chat.V1.ReactionDeletedEventData
end