defmodule Google.Cloud.Netapp.V1.ActiveDirectory.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :READY, 2
  field :UPDATING, 3
  field :IN_USE, 4
  field :DELETING, 5
  field :ERROR, 6
end

defmodule Google.Cloud.Netapp.V1.ListActiveDirectoriesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Netapp.V1.ListActiveDirectoriesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :active_directories, 1,
    repeated: true,
    type: Google.Cloud.Netapp.V1.ActiveDirectory,
    json_name: "activeDirectories"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Netapp.V1.GetActiveDirectoryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Netapp.V1.CreateActiveDirectoryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :active_directory, 2,
    type: Google.Cloud.Netapp.V1.ActiveDirectory,
    json_name: "activeDirectory",
    deprecated: false

  field :active_directory_id, 3, type: :string, json_name: "activeDirectoryId", deprecated: false
end

defmodule Google.Cloud.Netapp.V1.UpdateActiveDirectoryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :active_directory, 2,
    type: Google.Cloud.Netapp.V1.ActiveDirectory,
    json_name: "activeDirectory",
    deprecated: false
end

defmodule Google.Cloud.Netapp.V1.DeleteActiveDirectoryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Netapp.V1.ActiveDirectory.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Netapp.V1.ActiveDirectory do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :state, 3,
    type: Google.Cloud.Netapp.V1.ActiveDirectory.State,
    enum: true,
    deprecated: false

  field :domain, 4, type: :string, deprecated: false
  field :site, 5, type: :string
  field :dns, 6, type: :string, deprecated: false
  field :net_bios_prefix, 7, type: :string, json_name: "netBiosPrefix", deprecated: false
  field :organizational_unit, 8, type: :string, json_name: "organizationalUnit"
  field :aes_encryption, 9, type: :bool, json_name: "aesEncryption"
  field :username, 10, type: :string, deprecated: false
  field :password, 11, type: :string, deprecated: false

  field :backup_operators, 12,
    repeated: true,
    type: :string,
    json_name: "backupOperators",
    deprecated: false

  field :security_operators, 13,
    repeated: true,
    type: :string,
    json_name: "securityOperators",
    deprecated: false

  field :kdc_hostname, 14, type: :string, json_name: "kdcHostname"
  field :kdc_ip, 15, type: :string, json_name: "kdcIp"
  field :nfs_users_with_ldap, 16, type: :bool, json_name: "nfsUsersWithLdap"
  field :description, 17, type: :string
  field :ldap_signing, 18, type: :bool, json_name: "ldapSigning"
  field :encrypt_dc_connections, 19, type: :bool, json_name: "encryptDcConnections"

  field :labels, 20,
    repeated: true,
    type: Google.Cloud.Netapp.V1.ActiveDirectory.LabelsEntry,
    map: true

  field :state_details, 21, type: :string, json_name: "stateDetails", deprecated: false
end