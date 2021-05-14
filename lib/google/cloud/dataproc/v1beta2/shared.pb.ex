defmodule Google.Cloud.Dataproc.V1beta2.Component do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :COMPONENT_UNSPECIFIED
          | :ANACONDA
          | :DRUID
          | :HBASE
          | :HIVE_WEBHCAT
          | :JUPYTER
          | :KERBEROS
          | :PRESTO
          | :RANGER
          | :SOLR
          | :ZEPPELIN
          | :ZOOKEEPER

  field :COMPONENT_UNSPECIFIED, 0

  field :ANACONDA, 5

  field :DRUID, 9

  field :HBASE, 11

  field :HIVE_WEBHCAT, 3

  field :JUPYTER, 1

  field :KERBEROS, 7

  field :PRESTO, 6

  field :RANGER, 12

  field :SOLR, 10

  field :ZEPPELIN, 4

  field :ZOOKEEPER, 8
end
