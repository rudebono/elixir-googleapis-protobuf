defmodule Google.Monitoring.V3.ListNotificationChannelDescriptorsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:name, :page_size, :page_token]

  field :name, 4, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Monitoring.V3.ListNotificationChannelDescriptorsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          channel_descriptors: [Google.Monitoring.V3.NotificationChannelDescriptor.t()],
          next_page_token: String.t()
        }

  defstruct [:channel_descriptors, :next_page_token]

  field :channel_descriptors, 1,
    repeated: true,
    type: Google.Monitoring.V3.NotificationChannelDescriptor,
    json_name: "channelDescriptors"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Monitoring.V3.GetNotificationChannelDescriptorRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 3, type: :string

  def transform_module(), do: nil
end

defmodule Google.Monitoring.V3.CreateNotificationChannelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          notification_channel: Google.Monitoring.V3.NotificationChannel.t() | nil
        }

  defstruct [:name, :notification_channel]

  field :name, 3, type: :string

  field :notification_channel, 2,
    type: Google.Monitoring.V3.NotificationChannel,
    json_name: "notificationChannel"

  def transform_module(), do: nil
end

defmodule Google.Monitoring.V3.ListNotificationChannelsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          filter: String.t(),
          order_by: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:name, :filter, :order_by, :page_size, :page_token]

  field :name, 5, type: :string
  field :filter, 6, type: :string
  field :order_by, 7, type: :string, json_name: "orderBy"
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Monitoring.V3.ListNotificationChannelsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          notification_channels: [Google.Monitoring.V3.NotificationChannel.t()],
          next_page_token: String.t(),
          total_size: integer
        }

  defstruct [:notification_channels, :next_page_token, :total_size]

  field :notification_channels, 3,
    repeated: true,
    type: Google.Monitoring.V3.NotificationChannel,
    json_name: "notificationChannels"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 4, type: :int32, json_name: "totalSize"

  def transform_module(), do: nil
end

defmodule Google.Monitoring.V3.GetNotificationChannelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 3, type: :string

  def transform_module(), do: nil
end

defmodule Google.Monitoring.V3.UpdateNotificationChannelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          notification_channel: Google.Monitoring.V3.NotificationChannel.t() | nil
        }

  defstruct [:update_mask, :notification_channel]

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  field :notification_channel, 3,
    type: Google.Monitoring.V3.NotificationChannel,
    json_name: "notificationChannel"

  def transform_module(), do: nil
end

defmodule Google.Monitoring.V3.DeleteNotificationChannelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          force: boolean
        }

  defstruct [:name, :force]

  field :name, 3, type: :string
  field :force, 5, type: :bool

  def transform_module(), do: nil
end

defmodule Google.Monitoring.V3.SendNotificationChannelVerificationCodeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Monitoring.V3.GetNotificationChannelVerificationCodeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          expire_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:name, :expire_time]

  field :name, 1, type: :string
  field :expire_time, 2, type: Google.Protobuf.Timestamp, json_name: "expireTime"

  def transform_module(), do: nil
end

defmodule Google.Monitoring.V3.GetNotificationChannelVerificationCodeResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          code: String.t(),
          expire_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:code, :expire_time]

  field :code, 1, type: :string
  field :expire_time, 2, type: Google.Protobuf.Timestamp, json_name: "expireTime"

  def transform_module(), do: nil
end

defmodule Google.Monitoring.V3.VerifyNotificationChannelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          code: String.t()
        }

  defstruct [:name, :code]

  field :name, 1, type: :string
  field :code, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Monitoring.V3.NotificationChannelService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.monitoring.v3.NotificationChannelService"

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
