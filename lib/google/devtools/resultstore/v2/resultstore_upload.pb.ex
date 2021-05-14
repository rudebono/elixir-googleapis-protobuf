defmodule Google.Devtools.Resultstore.V2.UploadRequest.UploadOperation do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UPLOAD_OPERATION_UNSPECIFIED | :CREATE | :UPDATE | :MERGE | :FINALIZE

  field :UPLOAD_OPERATION_UNSPECIFIED, 0

  field :CREATE, 1

  field :UPDATE, 2

  field :MERGE, 3

  field :FINALIZE, 4
end

defmodule Google.Devtools.Resultstore.V2.CreateInvocationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          request_id: String.t(),
          invocation_id: String.t(),
          invocation: Google.Devtools.Resultstore.V2.Invocation.t() | nil,
          authorization_token: String.t(),
          auto_finalize_time: Google.Protobuf.Timestamp.t() | nil,
          initial_resume_token: String.t(),
          uploader_state: binary
        }

  defstruct [
    :request_id,
    :invocation_id,
    :invocation,
    :authorization_token,
    :auto_finalize_time,
    :initial_resume_token,
    :uploader_state
  ]

  field :request_id, 1, type: :string
  field :invocation_id, 2, type: :string
  field :invocation, 3, type: Google.Devtools.Resultstore.V2.Invocation
  field :authorization_token, 4, type: :string
  field :auto_finalize_time, 6, type: Google.Protobuf.Timestamp
  field :initial_resume_token, 7, type: :string
  field :uploader_state, 8, type: :bytes
end

defmodule Google.Devtools.Resultstore.V2.UpdateInvocationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          invocation: Google.Devtools.Resultstore.V2.Invocation.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          authorization_token: String.t()
        }

  defstruct [:invocation, :update_mask, :authorization_token]

  field :invocation, 3, type: Google.Devtools.Resultstore.V2.Invocation
  field :update_mask, 4, type: Google.Protobuf.FieldMask
  field :authorization_token, 5, type: :string
end

defmodule Google.Devtools.Resultstore.V2.MergeInvocationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          request_id: String.t(),
          invocation: Google.Devtools.Resultstore.V2.Invocation.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          authorization_token: String.t()
        }

  defstruct [:request_id, :invocation, :update_mask, :authorization_token]

  field :request_id, 1, type: :string
  field :invocation, 3, type: Google.Devtools.Resultstore.V2.Invocation
  field :update_mask, 4, type: Google.Protobuf.FieldMask
  field :authorization_token, 5, type: :string
end

defmodule Google.Devtools.Resultstore.V2.TouchInvocationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          authorization_token: String.t()
        }

  defstruct [:name, :authorization_token]

  field :name, 1, type: :string
  field :authorization_token, 2, type: :string
end

defmodule Google.Devtools.Resultstore.V2.TouchInvocationResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          id: Google.Devtools.Resultstore.V2.Invocation.Id.t() | nil
        }

  defstruct [:name, :id]

  field :name, 1, type: :string
  field :id, 2, type: Google.Devtools.Resultstore.V2.Invocation.Id
end

defmodule Google.Devtools.Resultstore.V2.DeleteInvocationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Devtools.Resultstore.V2.FinalizeInvocationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          authorization_token: String.t()
        }

  defstruct [:name, :authorization_token]

  field :name, 1, type: :string
  field :authorization_token, 3, type: :string
end

defmodule Google.Devtools.Resultstore.V2.FinalizeInvocationResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          id: Google.Devtools.Resultstore.V2.Invocation.Id.t() | nil
        }

  defstruct [:name, :id]

  field :name, 1, type: :string
  field :id, 2, type: Google.Devtools.Resultstore.V2.Invocation.Id
end

defmodule Google.Devtools.Resultstore.V2.CreateTargetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          request_id: String.t(),
          parent: String.t(),
          target_id: String.t(),
          target: Google.Devtools.Resultstore.V2.Target.t() | nil,
          authorization_token: String.t()
        }

  defstruct [:request_id, :parent, :target_id, :target, :authorization_token]

  field :request_id, 1, type: :string
  field :parent, 2, type: :string
  field :target_id, 3, type: :string
  field :target, 4, type: Google.Devtools.Resultstore.V2.Target
  field :authorization_token, 5, type: :string
end

defmodule Google.Devtools.Resultstore.V2.UpdateTargetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target: Google.Devtools.Resultstore.V2.Target.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          authorization_token: String.t(),
          create_if_not_found: boolean
        }

  defstruct [:target, :update_mask, :authorization_token, :create_if_not_found]

  field :target, 3, type: Google.Devtools.Resultstore.V2.Target
  field :update_mask, 4, type: Google.Protobuf.FieldMask
  field :authorization_token, 5, type: :string
  field :create_if_not_found, 6, type: :bool
end

defmodule Google.Devtools.Resultstore.V2.MergeTargetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          request_id: String.t(),
          target: Google.Devtools.Resultstore.V2.Target.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          authorization_token: String.t(),
          create_if_not_found: boolean
        }

  defstruct [:request_id, :target, :update_mask, :authorization_token, :create_if_not_found]

  field :request_id, 1, type: :string
  field :target, 3, type: Google.Devtools.Resultstore.V2.Target
  field :update_mask, 4, type: Google.Protobuf.FieldMask
  field :authorization_token, 5, type: :string
  field :create_if_not_found, 6, type: :bool
end

defmodule Google.Devtools.Resultstore.V2.FinalizeTargetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          authorization_token: String.t()
        }

  defstruct [:name, :authorization_token]

  field :name, 1, type: :string
  field :authorization_token, 3, type: :string
end

defmodule Google.Devtools.Resultstore.V2.FinalizeTargetResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          id: Google.Devtools.Resultstore.V2.Target.Id.t() | nil
        }

  defstruct [:name, :id]

  field :name, 1, type: :string
  field :id, 2, type: Google.Devtools.Resultstore.V2.Target.Id
end

defmodule Google.Devtools.Resultstore.V2.CreateConfiguredTargetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          request_id: String.t(),
          parent: String.t(),
          config_id: String.t(),
          configured_target: Google.Devtools.Resultstore.V2.ConfiguredTarget.t() | nil,
          authorization_token: String.t()
        }

  defstruct [:request_id, :parent, :config_id, :configured_target, :authorization_token]

  field :request_id, 1, type: :string
  field :parent, 2, type: :string
  field :config_id, 3, type: :string
  field :configured_target, 4, type: Google.Devtools.Resultstore.V2.ConfiguredTarget
  field :authorization_token, 5, type: :string
end

defmodule Google.Devtools.Resultstore.V2.UpdateConfiguredTargetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          configured_target: Google.Devtools.Resultstore.V2.ConfiguredTarget.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          authorization_token: String.t(),
          create_if_not_found: boolean
        }

  defstruct [:configured_target, :update_mask, :authorization_token, :create_if_not_found]

  field :configured_target, 3, type: Google.Devtools.Resultstore.V2.ConfiguredTarget
  field :update_mask, 4, type: Google.Protobuf.FieldMask
  field :authorization_token, 5, type: :string
  field :create_if_not_found, 6, type: :bool
end

defmodule Google.Devtools.Resultstore.V2.MergeConfiguredTargetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          request_id: String.t(),
          configured_target: Google.Devtools.Resultstore.V2.ConfiguredTarget.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          authorization_token: String.t(),
          create_if_not_found: boolean
        }

  defstruct [
    :request_id,
    :configured_target,
    :update_mask,
    :authorization_token,
    :create_if_not_found
  ]

  field :request_id, 1, type: :string
  field :configured_target, 3, type: Google.Devtools.Resultstore.V2.ConfiguredTarget
  field :update_mask, 4, type: Google.Protobuf.FieldMask
  field :authorization_token, 5, type: :string
  field :create_if_not_found, 6, type: :bool
end

defmodule Google.Devtools.Resultstore.V2.FinalizeConfiguredTargetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          authorization_token: String.t()
        }

  defstruct [:name, :authorization_token]

  field :name, 1, type: :string
  field :authorization_token, 3, type: :string
end

defmodule Google.Devtools.Resultstore.V2.FinalizeConfiguredTargetResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          id: Google.Devtools.Resultstore.V2.ConfiguredTarget.Id.t() | nil
        }

  defstruct [:name, :id]

  field :name, 1, type: :string
  field :id, 2, type: Google.Devtools.Resultstore.V2.ConfiguredTarget.Id
end

defmodule Google.Devtools.Resultstore.V2.CreateActionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          request_id: String.t(),
          parent: String.t(),
          action_id: String.t(),
          action: Google.Devtools.Resultstore.V2.Action.t() | nil,
          authorization_token: String.t()
        }

  defstruct [:request_id, :parent, :action_id, :action, :authorization_token]

  field :request_id, 1, type: :string
  field :parent, 2, type: :string
  field :action_id, 3, type: :string
  field :action, 4, type: Google.Devtools.Resultstore.V2.Action
  field :authorization_token, 5, type: :string
end

defmodule Google.Devtools.Resultstore.V2.UpdateActionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          action: Google.Devtools.Resultstore.V2.Action.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          authorization_token: String.t(),
          create_if_not_found: boolean
        }

  defstruct [:action, :update_mask, :authorization_token, :create_if_not_found]

  field :action, 3, type: Google.Devtools.Resultstore.V2.Action
  field :update_mask, 4, type: Google.Protobuf.FieldMask
  field :authorization_token, 5, type: :string
  field :create_if_not_found, 6, type: :bool
end

defmodule Google.Devtools.Resultstore.V2.MergeActionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          request_id: String.t(),
          action: Google.Devtools.Resultstore.V2.Action.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          authorization_token: String.t(),
          create_if_not_found: boolean
        }

  defstruct [:request_id, :action, :update_mask, :authorization_token, :create_if_not_found]

  field :request_id, 1, type: :string
  field :action, 3, type: Google.Devtools.Resultstore.V2.Action
  field :update_mask, 4, type: Google.Protobuf.FieldMask
  field :authorization_token, 5, type: :string
  field :create_if_not_found, 6, type: :bool
end

defmodule Google.Devtools.Resultstore.V2.CreateConfigurationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          request_id: String.t(),
          parent: String.t(),
          config_id: String.t(),
          configuration: Google.Devtools.Resultstore.V2.Configuration.t() | nil,
          authorization_token: String.t()
        }

  defstruct [:request_id, :parent, :config_id, :configuration, :authorization_token]

  field :request_id, 1, type: :string
  field :parent, 2, type: :string
  field :config_id, 3, type: :string
  field :configuration, 4, type: Google.Devtools.Resultstore.V2.Configuration
  field :authorization_token, 5, type: :string
end

defmodule Google.Devtools.Resultstore.V2.UpdateConfigurationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          configuration: Google.Devtools.Resultstore.V2.Configuration.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          authorization_token: String.t(),
          create_if_not_found: boolean
        }

  defstruct [:configuration, :update_mask, :authorization_token, :create_if_not_found]

  field :configuration, 3, type: Google.Devtools.Resultstore.V2.Configuration
  field :update_mask, 4, type: Google.Protobuf.FieldMask
  field :authorization_token, 5, type: :string
  field :create_if_not_found, 6, type: :bool
end

defmodule Google.Devtools.Resultstore.V2.CreateFileSetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          request_id: String.t(),
          parent: String.t(),
          file_set_id: String.t(),
          file_set: Google.Devtools.Resultstore.V2.FileSet.t() | nil,
          authorization_token: String.t()
        }

  defstruct [:request_id, :parent, :file_set_id, :file_set, :authorization_token]

  field :request_id, 1, type: :string
  field :parent, 2, type: :string
  field :file_set_id, 3, type: :string
  field :file_set, 4, type: Google.Devtools.Resultstore.V2.FileSet
  field :authorization_token, 5, type: :string
end

defmodule Google.Devtools.Resultstore.V2.UpdateFileSetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          file_set: Google.Devtools.Resultstore.V2.FileSet.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          authorization_token: String.t(),
          create_if_not_found: boolean
        }

  defstruct [:file_set, :update_mask, :authorization_token, :create_if_not_found]

  field :file_set, 1, type: Google.Devtools.Resultstore.V2.FileSet
  field :update_mask, 2, type: Google.Protobuf.FieldMask
  field :authorization_token, 3, type: :string
  field :create_if_not_found, 4, type: :bool
end

defmodule Google.Devtools.Resultstore.V2.MergeFileSetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          request_id: String.t(),
          file_set: Google.Devtools.Resultstore.V2.FileSet.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          authorization_token: String.t(),
          create_if_not_found: boolean
        }

  defstruct [:request_id, :file_set, :update_mask, :authorization_token, :create_if_not_found]

  field :request_id, 1, type: :string
  field :file_set, 2, type: Google.Devtools.Resultstore.V2.FileSet
  field :update_mask, 3, type: Google.Protobuf.FieldMask
  field :authorization_token, 4, type: :string
  field :create_if_not_found, 5, type: :bool
end

defmodule Google.Devtools.Resultstore.V2.UploadBatchRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          authorization_token: String.t(),
          next_resume_token: String.t(),
          resume_token: String.t(),
          uploader_state: binary,
          upload_requests: [Google.Devtools.Resultstore.V2.UploadRequest.t()]
        }

  defstruct [
    :parent,
    :authorization_token,
    :next_resume_token,
    :resume_token,
    :uploader_state,
    :upload_requests
  ]

  field :parent, 1, type: :string
  field :authorization_token, 2, type: :string
  field :next_resume_token, 3, type: :string
  field :resume_token, 4, type: :string
  field :uploader_state, 6, type: :bytes
  field :upload_requests, 5, repeated: true, type: Google.Devtools.Resultstore.V2.UploadRequest
end

defmodule Google.Devtools.Resultstore.V2.UploadBatchResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Devtools.Resultstore.V2.UploadRequest.Id do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_id: String.t(),
          configuration_id: String.t(),
          action_id: String.t(),
          file_set_id: String.t()
        }

  defstruct [:target_id, :configuration_id, :action_id, :file_set_id]

  field :target_id, 1, type: :string
  field :configuration_id, 2, type: :string
  field :action_id, 3, type: :string
  field :file_set_id, 4, type: :string
end

defmodule Google.Devtools.Resultstore.V2.UploadRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource: {atom, any},
          id: Google.Devtools.Resultstore.V2.UploadRequest.Id.t() | nil,
          upload_operation: Google.Devtools.Resultstore.V2.UploadRequest.UploadOperation.t(),
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          create_if_not_found: boolean
        }

  defstruct [:resource, :id, :upload_operation, :update_mask, :create_if_not_found]

  oneof :resource, 0
  field :id, 1, type: Google.Devtools.Resultstore.V2.UploadRequest.Id

  field :upload_operation, 2,
    type: Google.Devtools.Resultstore.V2.UploadRequest.UploadOperation,
    enum: true

  field :update_mask, 3, type: Google.Protobuf.FieldMask
  field :create_if_not_found, 10, type: :bool
  field :invocation, 4, type: Google.Devtools.Resultstore.V2.Invocation, oneof: 0
  field :target, 5, type: Google.Devtools.Resultstore.V2.Target, oneof: 0
  field :configuration, 6, type: Google.Devtools.Resultstore.V2.Configuration, oneof: 0
  field :configured_target, 7, type: Google.Devtools.Resultstore.V2.ConfiguredTarget, oneof: 0
  field :action, 8, type: Google.Devtools.Resultstore.V2.Action, oneof: 0
  field :file_set, 9, type: Google.Devtools.Resultstore.V2.FileSet, oneof: 0
end

defmodule Google.Devtools.Resultstore.V2.GetInvocationUploadMetadataRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          authorization_token: String.t()
        }

  defstruct [:name, :authorization_token]

  field :name, 1, type: :string
  field :authorization_token, 2, type: :string
end
