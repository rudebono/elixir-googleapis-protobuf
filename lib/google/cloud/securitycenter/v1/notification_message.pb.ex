defmodule Google.Cloud.Securitycenter.V1.NotificationMessage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          event: {:finding, Google.Cloud.Securitycenter.V1.Finding.t() | nil},
          notification_config_name: String.t(),
          resource: Google.Cloud.Securitycenter.V1.Resource.t() | nil
        }

  defstruct [:event, :notification_config_name, :resource]

  oneof :event, 0

  field :notification_config_name, 1, type: :string, json_name: "notificationConfigName"
  field :finding, 2, type: Google.Cloud.Securitycenter.V1.Finding, oneof: 0
  field :resource, 3, type: Google.Cloud.Securitycenter.V1.Resource

  def transform_module(), do: nil
end
