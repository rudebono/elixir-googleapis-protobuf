defmodule Google.Cloud.Managedidentities.V1.OpMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          create_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          target: String.t(),
          verb: String.t(),
          requested_cancellation: boolean,
          api_version: String.t()
        }

  defstruct [:create_time, :end_time, :target, :verb, :requested_cancellation, :api_version]

  field :create_time, 1, type: Google.Protobuf.Timestamp
  field :end_time, 2, type: Google.Protobuf.Timestamp
  field :target, 3, type: :string
  field :verb, 4, type: :string
  field :requested_cancellation, 5, type: :bool
  field :api_version, 6, type: :string
end

defmodule Google.Cloud.Managedidentities.V1.CreateMicrosoftAdDomainRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          domain_name: String.t(),
          domain: Google.Cloud.Managedidentities.V1.Domain.t() | nil
        }

  defstruct [:parent, :domain_name, :domain]

  field :parent, 1, type: :string
  field :domain_name, 2, type: :string
  field :domain, 3, type: Google.Cloud.Managedidentities.V1.Domain
end

defmodule Google.Cloud.Managedidentities.V1.ResetAdminPasswordRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Managedidentities.V1.ResetAdminPasswordResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          password: String.t()
        }

  defstruct [:password]

  field :password, 1, type: :string
end

defmodule Google.Cloud.Managedidentities.V1.ListDomainsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct [:parent, :page_size, :page_token, :filter, :order_by]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :filter, 4, type: :string
  field :order_by, 5, type: :string
end

defmodule Google.Cloud.Managedidentities.V1.ListDomainsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          domains: [Google.Cloud.Managedidentities.V1.Domain.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct [:domains, :next_page_token, :unreachable]

  field :domains, 1, repeated: true, type: Google.Cloud.Managedidentities.V1.Domain
  field :next_page_token, 2, type: :string
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Managedidentities.V1.GetDomainRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Managedidentities.V1.UpdateDomainRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          domain: Google.Cloud.Managedidentities.V1.Domain.t() | nil
        }

  defstruct [:update_mask, :domain]

  field :update_mask, 1, type: Google.Protobuf.FieldMask
  field :domain, 2, type: Google.Cloud.Managedidentities.V1.Domain
end

defmodule Google.Cloud.Managedidentities.V1.DeleteDomainRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Managedidentities.V1.AttachTrustRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          trust: Google.Cloud.Managedidentities.V1.Trust.t() | nil
        }

  defstruct [:name, :trust]

  field :name, 1, type: :string
  field :trust, 2, type: Google.Cloud.Managedidentities.V1.Trust
end

defmodule Google.Cloud.Managedidentities.V1.ReconfigureTrustRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          target_domain_name: String.t(),
          target_dns_ip_addresses: [String.t()]
        }

  defstruct [:name, :target_domain_name, :target_dns_ip_addresses]

  field :name, 1, type: :string
  field :target_domain_name, 2, type: :string
  field :target_dns_ip_addresses, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Managedidentities.V1.DetachTrustRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          trust: Google.Cloud.Managedidentities.V1.Trust.t() | nil
        }

  defstruct [:name, :trust]

  field :name, 1, type: :string
  field :trust, 2, type: Google.Cloud.Managedidentities.V1.Trust
end

defmodule Google.Cloud.Managedidentities.V1.ValidateTrustRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          trust: Google.Cloud.Managedidentities.V1.Trust.t() | nil
        }

  defstruct [:name, :trust]

  field :name, 1, type: :string
  field :trust, 2, type: Google.Cloud.Managedidentities.V1.Trust
end
