defmodule Google.Cloud.Lifesciences.V2beta.RunPipelineRequest.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Lifesciences.V2beta.RunPipelineRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          pipeline: Google.Cloud.Lifesciences.V2beta.Pipeline.t() | nil,
          labels: %{String.t() => String.t()},
          pub_sub_topic: String.t()
        }

  defstruct [:parent, :pipeline, :labels, :pub_sub_topic]

  field :parent, 4, type: :string
  field :pipeline, 1, type: Google.Cloud.Lifesciences.V2beta.Pipeline

  field :labels, 2,
    repeated: true,
    type: Google.Cloud.Lifesciences.V2beta.RunPipelineRequest.LabelsEntry,
    map: true

  field :pub_sub_topic, 3, type: :string
end

defmodule Google.Cloud.Lifesciences.V2beta.RunPipelineResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Cloud.Lifesciences.V2beta.Pipeline.EnvironmentEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Lifesciences.V2beta.Pipeline do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          actions: [Google.Cloud.Lifesciences.V2beta.Action.t()],
          resources: Google.Cloud.Lifesciences.V2beta.Resources.t() | nil,
          environment: %{String.t() => String.t()},
          timeout: Google.Protobuf.Duration.t() | nil
        }

  defstruct [:actions, :resources, :environment, :timeout]

  field :actions, 1, repeated: true, type: Google.Cloud.Lifesciences.V2beta.Action
  field :resources, 2, type: Google.Cloud.Lifesciences.V2beta.Resources

  field :environment, 3,
    repeated: true,
    type: Google.Cloud.Lifesciences.V2beta.Pipeline.EnvironmentEntry,
    map: true

  field :timeout, 4, type: Google.Protobuf.Duration
end

defmodule Google.Cloud.Lifesciences.V2beta.Action.EnvironmentEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Lifesciences.V2beta.Action.PortMappingsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: integer,
          value: integer
        }

  defstruct [:key, :value]

  field :key, 1, type: :int32
  field :value, 2, type: :int32
end

defmodule Google.Cloud.Lifesciences.V2beta.Action.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Lifesciences.V2beta.Action do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          container_name: String.t(),
          image_uri: String.t(),
          commands: [String.t()],
          entrypoint: String.t(),
          environment: %{String.t() => String.t()},
          pid_namespace: String.t(),
          port_mappings: %{integer => integer},
          mounts: [Google.Cloud.Lifesciences.V2beta.Mount.t()],
          labels: %{String.t() => String.t()},
          credentials: Google.Cloud.Lifesciences.V2beta.Secret.t() | nil,
          timeout: Google.Protobuf.Duration.t() | nil,
          ignore_exit_status: boolean,
          run_in_background: boolean,
          always_run: boolean,
          enable_fuse: boolean,
          publish_exposed_ports: boolean,
          disable_image_prefetch: boolean,
          disable_standard_error_capture: boolean,
          block_external_network: boolean
        }

  defstruct [
    :container_name,
    :image_uri,
    :commands,
    :entrypoint,
    :environment,
    :pid_namespace,
    :port_mappings,
    :mounts,
    :labels,
    :credentials,
    :timeout,
    :ignore_exit_status,
    :run_in_background,
    :always_run,
    :enable_fuse,
    :publish_exposed_ports,
    :disable_image_prefetch,
    :disable_standard_error_capture,
    :block_external_network
  ]

  field :container_name, 1, type: :string
  field :image_uri, 2, type: :string
  field :commands, 3, repeated: true, type: :string
  field :entrypoint, 4, type: :string

  field :environment, 5,
    repeated: true,
    type: Google.Cloud.Lifesciences.V2beta.Action.EnvironmentEntry,
    map: true

  field :pid_namespace, 6, type: :string

  field :port_mappings, 8,
    repeated: true,
    type: Google.Cloud.Lifesciences.V2beta.Action.PortMappingsEntry,
    map: true

  field :mounts, 9, repeated: true, type: Google.Cloud.Lifesciences.V2beta.Mount

  field :labels, 10,
    repeated: true,
    type: Google.Cloud.Lifesciences.V2beta.Action.LabelsEntry,
    map: true

  field :credentials, 11, type: Google.Cloud.Lifesciences.V2beta.Secret
  field :timeout, 12, type: Google.Protobuf.Duration
  field :ignore_exit_status, 13, type: :bool
  field :run_in_background, 14, type: :bool
  field :always_run, 15, type: :bool
  field :enable_fuse, 16, type: :bool
  field :publish_exposed_ports, 17, type: :bool
  field :disable_image_prefetch, 18, type: :bool
  field :disable_standard_error_capture, 19, type: :bool
  field :block_external_network, 20, type: :bool
end

defmodule Google.Cloud.Lifesciences.V2beta.Secret do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key_name: String.t(),
          cipher_text: String.t()
        }

  defstruct [:key_name, :cipher_text]

  field :key_name, 1, type: :string
  field :cipher_text, 2, type: :string
end

defmodule Google.Cloud.Lifesciences.V2beta.Mount do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          disk: String.t(),
          path: String.t(),
          read_only: boolean
        }

  defstruct [:disk, :path, :read_only]

  field :disk, 1, type: :string
  field :path, 2, type: :string
  field :read_only, 3, type: :bool
end

defmodule Google.Cloud.Lifesciences.V2beta.Resources do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          regions: [String.t()],
          zones: [String.t()],
          virtual_machine: Google.Cloud.Lifesciences.V2beta.VirtualMachine.t() | nil
        }

  defstruct [:regions, :zones, :virtual_machine]

  field :regions, 2, repeated: true, type: :string
  field :zones, 3, repeated: true, type: :string
  field :virtual_machine, 4, type: Google.Cloud.Lifesciences.V2beta.VirtualMachine
end

defmodule Google.Cloud.Lifesciences.V2beta.VirtualMachine.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Lifesciences.V2beta.VirtualMachine do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          machine_type: String.t(),
          preemptible: boolean,
          labels: %{String.t() => String.t()},
          disks: [Google.Cloud.Lifesciences.V2beta.Disk.t()],
          network: Google.Cloud.Lifesciences.V2beta.Network.t() | nil,
          accelerators: [Google.Cloud.Lifesciences.V2beta.Accelerator.t()],
          service_account: Google.Cloud.Lifesciences.V2beta.ServiceAccount.t() | nil,
          boot_disk_size_gb: integer,
          cpu_platform: String.t(),
          boot_image: String.t(),
          nvidia_driver_version: String.t(),
          enable_stackdriver_monitoring: boolean,
          docker_cache_images: [String.t()],
          volumes: [Google.Cloud.Lifesciences.V2beta.Volume.t()]
        }

  defstruct [
    :machine_type,
    :preemptible,
    :labels,
    :disks,
    :network,
    :accelerators,
    :service_account,
    :boot_disk_size_gb,
    :cpu_platform,
    :boot_image,
    :nvidia_driver_version,
    :enable_stackdriver_monitoring,
    :docker_cache_images,
    :volumes
  ]

  field :machine_type, 1, type: :string
  field :preemptible, 2, type: :bool

  field :labels, 3,
    repeated: true,
    type: Google.Cloud.Lifesciences.V2beta.VirtualMachine.LabelsEntry,
    map: true

  field :disks, 4, repeated: true, type: Google.Cloud.Lifesciences.V2beta.Disk
  field :network, 5, type: Google.Cloud.Lifesciences.V2beta.Network
  field :accelerators, 6, repeated: true, type: Google.Cloud.Lifesciences.V2beta.Accelerator
  field :service_account, 7, type: Google.Cloud.Lifesciences.V2beta.ServiceAccount
  field :boot_disk_size_gb, 8, type: :int32
  field :cpu_platform, 9, type: :string
  field :boot_image, 10, type: :string
  field :nvidia_driver_version, 11, type: :string, deprecated: true
  field :enable_stackdriver_monitoring, 12, type: :bool
  field :docker_cache_images, 13, repeated: true, type: :string
  field :volumes, 14, repeated: true, type: Google.Cloud.Lifesciences.V2beta.Volume
end

defmodule Google.Cloud.Lifesciences.V2beta.ServiceAccount do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          email: String.t(),
          scopes: [String.t()]
        }

  defstruct [:email, :scopes]

  field :email, 1, type: :string
  field :scopes, 2, repeated: true, type: :string
end

defmodule Google.Cloud.Lifesciences.V2beta.Accelerator do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: String.t(),
          count: integer
        }

  defstruct [:type, :count]

  field :type, 1, type: :string
  field :count, 2, type: :int64
end

defmodule Google.Cloud.Lifesciences.V2beta.Network do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          network: String.t(),
          use_private_address: boolean,
          subnetwork: String.t()
        }

  defstruct [:network, :use_private_address, :subnetwork]

  field :network, 1, type: :string
  field :use_private_address, 2, type: :bool
  field :subnetwork, 3, type: :string
end

defmodule Google.Cloud.Lifesciences.V2beta.Disk do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          size_gb: integer,
          type: String.t(),
          source_image: String.t()
        }

  defstruct [:name, :size_gb, :type, :source_image]

  field :name, 1, type: :string
  field :size_gb, 2, type: :int32
  field :type, 3, type: :string
  field :source_image, 4, type: :string
end

defmodule Google.Cloud.Lifesciences.V2beta.Volume do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          storage: {atom, any},
          volume: String.t()
        }

  defstruct [:storage, :volume]

  oneof :storage, 0
  field :volume, 1, type: :string
  field :persistent_disk, 2, type: Google.Cloud.Lifesciences.V2beta.PersistentDisk, oneof: 0
  field :existing_disk, 3, type: Google.Cloud.Lifesciences.V2beta.ExistingDisk, oneof: 0
  field :nfs_mount, 4, type: Google.Cloud.Lifesciences.V2beta.NFSMount, oneof: 0
end

defmodule Google.Cloud.Lifesciences.V2beta.PersistentDisk do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          size_gb: integer,
          type: String.t(),
          source_image: String.t()
        }

  defstruct [:size_gb, :type, :source_image]

  field :size_gb, 1, type: :int32
  field :type, 2, type: :string
  field :source_image, 3, type: :string
end

defmodule Google.Cloud.Lifesciences.V2beta.ExistingDisk do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          disk: String.t()
        }

  defstruct [:disk]

  field :disk, 1, type: :string
end

defmodule Google.Cloud.Lifesciences.V2beta.NFSMount do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target: String.t()
        }

  defstruct [:target]

  field :target, 1, type: :string
end

defmodule Google.Cloud.Lifesciences.V2beta.Metadata.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Lifesciences.V2beta.Metadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          pipeline: Google.Cloud.Lifesciences.V2beta.Pipeline.t() | nil,
          labels: %{String.t() => String.t()},
          events: [Google.Cloud.Lifesciences.V2beta.Event.t()],
          create_time: Google.Protobuf.Timestamp.t() | nil,
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          pub_sub_topic: String.t()
        }

  defstruct [:pipeline, :labels, :events, :create_time, :start_time, :end_time, :pub_sub_topic]

  field :pipeline, 1, type: Google.Cloud.Lifesciences.V2beta.Pipeline

  field :labels, 2,
    repeated: true,
    type: Google.Cloud.Lifesciences.V2beta.Metadata.LabelsEntry,
    map: true

  field :events, 3, repeated: true, type: Google.Cloud.Lifesciences.V2beta.Event
  field :create_time, 4, type: Google.Protobuf.Timestamp
  field :start_time, 5, type: Google.Protobuf.Timestamp
  field :end_time, 6, type: Google.Protobuf.Timestamp
  field :pub_sub_topic, 7, type: :string
end

defmodule Google.Cloud.Lifesciences.V2beta.Event do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          details: {atom, any},
          timestamp: Google.Protobuf.Timestamp.t() | nil,
          description: String.t()
        }

  defstruct [:details, :timestamp, :description]

  oneof :details, 0
  field :timestamp, 1, type: Google.Protobuf.Timestamp
  field :description, 2, type: :string
  field :delayed, 17, type: Google.Cloud.Lifesciences.V2beta.DelayedEvent, oneof: 0
  field :worker_assigned, 18, type: Google.Cloud.Lifesciences.V2beta.WorkerAssignedEvent, oneof: 0
  field :worker_released, 19, type: Google.Cloud.Lifesciences.V2beta.WorkerReleasedEvent, oneof: 0
  field :pull_started, 20, type: Google.Cloud.Lifesciences.V2beta.PullStartedEvent, oneof: 0
  field :pull_stopped, 21, type: Google.Cloud.Lifesciences.V2beta.PullStoppedEvent, oneof: 0

  field :container_started, 22,
    type: Google.Cloud.Lifesciences.V2beta.ContainerStartedEvent,
    oneof: 0

  field :container_stopped, 23,
    type: Google.Cloud.Lifesciences.V2beta.ContainerStoppedEvent,
    oneof: 0

  field :container_killed, 24,
    type: Google.Cloud.Lifesciences.V2beta.ContainerKilledEvent,
    oneof: 0

  field :unexpected_exit_status, 25,
    type: Google.Cloud.Lifesciences.V2beta.UnexpectedExitStatusEvent,
    oneof: 0

  field :failed, 26, type: Google.Cloud.Lifesciences.V2beta.FailedEvent, oneof: 0
end

defmodule Google.Cloud.Lifesciences.V2beta.DelayedEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cause: String.t(),
          metrics: [String.t()]
        }

  defstruct [:cause, :metrics]

  field :cause, 1, type: :string
  field :metrics, 2, repeated: true, type: :string
end

defmodule Google.Cloud.Lifesciences.V2beta.WorkerAssignedEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          zone: String.t(),
          instance: String.t(),
          machine_type: String.t()
        }

  defstruct [:zone, :instance, :machine_type]

  field :zone, 1, type: :string
  field :instance, 2, type: :string
  field :machine_type, 3, type: :string
end

defmodule Google.Cloud.Lifesciences.V2beta.WorkerReleasedEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          zone: String.t(),
          instance: String.t()
        }

  defstruct [:zone, :instance]

  field :zone, 1, type: :string
  field :instance, 2, type: :string
end

defmodule Google.Cloud.Lifesciences.V2beta.PullStartedEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          image_uri: String.t()
        }

  defstruct [:image_uri]

  field :image_uri, 1, type: :string
end

defmodule Google.Cloud.Lifesciences.V2beta.PullStoppedEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          image_uri: String.t()
        }

  defstruct [:image_uri]

  field :image_uri, 1, type: :string
end

defmodule Google.Cloud.Lifesciences.V2beta.ContainerStartedEvent.PortMappingsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: integer,
          value: integer
        }

  defstruct [:key, :value]

  field :key, 1, type: :int32
  field :value, 2, type: :int32
end

defmodule Google.Cloud.Lifesciences.V2beta.ContainerStartedEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          action_id: integer,
          port_mappings: %{integer => integer},
          ip_address: String.t()
        }

  defstruct [:action_id, :port_mappings, :ip_address]

  field :action_id, 1, type: :int32

  field :port_mappings, 2,
    repeated: true,
    type: Google.Cloud.Lifesciences.V2beta.ContainerStartedEvent.PortMappingsEntry,
    map: true

  field :ip_address, 3, type: :string
end

defmodule Google.Cloud.Lifesciences.V2beta.ContainerStoppedEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          action_id: integer,
          exit_status: integer,
          stderr: String.t()
        }

  defstruct [:action_id, :exit_status, :stderr]

  field :action_id, 1, type: :int32
  field :exit_status, 2, type: :int32
  field :stderr, 3, type: :string
end

defmodule Google.Cloud.Lifesciences.V2beta.UnexpectedExitStatusEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          action_id: integer,
          exit_status: integer
        }

  defstruct [:action_id, :exit_status]

  field :action_id, 1, type: :int32
  field :exit_status, 2, type: :int32
end

defmodule Google.Cloud.Lifesciences.V2beta.ContainerKilledEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          action_id: integer
        }

  defstruct [:action_id]

  field :action_id, 1, type: :int32
end

defmodule Google.Cloud.Lifesciences.V2beta.FailedEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          code: Google.Rpc.Code.t(),
          cause: String.t()
        }

  defstruct [:code, :cause]

  field :code, 1, type: Google.Rpc.Code, enum: true
  field :cause, 2, type: :string
end
