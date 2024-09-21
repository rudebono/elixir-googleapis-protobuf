defmodule Google.Monitoring.V3.ListNotificationChannelDescriptorsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 4, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Monitoring.V3.ListNotificationChannelDescriptorsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :channel_descriptors, 1,
    repeated: true,
    type: Google.Monitoring.V3.NotificationChannelDescriptor,
    json_name: "channelDescriptors"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Monitoring.V3.GetNotificationChannelDescriptorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 3, type: :string, deprecated: false
end

defmodule Google.Monitoring.V3.CreateNotificationChannelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 3, type: :string, deprecated: false

  field :notification_channel, 2,
    type: Google.Monitoring.V3.NotificationChannel,
    json_name: "notificationChannel",
    deprecated: false
end

defmodule Google.Monitoring.V3.ListNotificationChannelsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 5, type: :string, deprecated: false
  field :filter, 6, type: :string
  field :order_by, 7, type: :string, json_name: "orderBy"
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
end

defmodule Google.Monitoring.V3.ListNotificationChannelsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :notification_channels, 3,
    repeated: true,
    type: Google.Monitoring.V3.NotificationChannel,
    json_name: "notificationChannels"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 4, type: :int32, json_name: "totalSize"
end

defmodule Google.Monitoring.V3.GetNotificationChannelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 3, type: :string, deprecated: false
end

defmodule Google.Monitoring.V3.UpdateNotificationChannelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  field :notification_channel, 3,
    type: Google.Monitoring.V3.NotificationChannel,
    json_name: "notificationChannel",
    deprecated: false
end

defmodule Google.Monitoring.V3.DeleteNotificationChannelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 3, type: :string, deprecated: false
  field :force, 5, type: :bool
end

defmodule Google.Monitoring.V3.SendNotificationChannelVerificationCodeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Monitoring.V3.GetNotificationChannelVerificationCodeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :expire_time, 2, type: Google.Protobuf.Timestamp, json_name: "expireTime"
end

defmodule Google.Monitoring.V3.GetNotificationChannelVerificationCodeResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :code, 1, type: :string
  field :expire_time, 2, type: Google.Protobuf.Timestamp, json_name: "expireTime"
end

defmodule Google.Monitoring.V3.VerifyNotificationChannelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :code, 2, type: :string, deprecated: false
end

defmodule Google.Monitoring.V3.NotificationChannelService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.monitoring.v3.NotificationChannelService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :ListNotificationChannelDescriptors,
      Google.Monitoring.V3.ListNotificationChannelDescriptorsRequest,
      Google.Monitoring.V3.ListNotificationChannelDescriptorsResponse

  rpc :GetNotificationChannelDescriptor,
      Google.Monitoring.V3.GetNotificationChannelDescriptorRequest,
      Google.Monitoring.V3.NotificationChannelDescriptor

  rpc :ListNotificationChannels,
      Google.Monitoring.V3.ListNotificationChannelsRequest,
      Google.Monitoring.V3.ListNotificationChannelsResponse

  rpc :GetNotificationChannel,
      Google.Monitoring.V3.GetNotificationChannelRequest,
      Google.Monitoring.V3.NotificationChannel

  rpc :CreateNotificationChannel,
      Google.Monitoring.V3.CreateNotificationChannelRequest,
      Google.Monitoring.V3.NotificationChannel

  rpc :UpdateNotificationChannel,
      Google.Monitoring.V3.UpdateNotificationChannelRequest,
      Google.Monitoring.V3.NotificationChannel

  rpc :DeleteNotificationChannel,
      Google.Monitoring.V3.DeleteNotificationChannelRequest,
      Google.Protobuf.Empty

  rpc :SendNotificationChannelVerificationCode,
      Google.Monitoring.V3.SendNotificationChannelVerificationCodeRequest,
      Google.Protobuf.Empty

  rpc :GetNotificationChannelVerificationCode,
      Google.Monitoring.V3.GetNotificationChannelVerificationCodeRequest,
      Google.Monitoring.V3.GetNotificationChannelVerificationCodeResponse

  rpc :VerifyNotificationChannel,
      Google.Monitoring.V3.VerifyNotificationChannelRequest,
      Google.Monitoring.V3.NotificationChannel
end

defmodule Google.Monitoring.V3.NotificationChannelService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Monitoring.V3.NotificationChannelService.Service
end