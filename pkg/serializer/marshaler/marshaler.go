// Unless explicitly stated otherwise all files in this repository are licensed
// under the Apache License Version 2.0.
// This product includes software developed at Datadog (https://www.datadoghq.com/).
// Copyright 2016-2019 Datadog, Inc.

package marshaler

// Marshaler is an interface for metrics that are able to serialize themselves to JSON and protobuf
type Marshaler interface {
	MarshalJSON() ([]byte, error)
	Marshal() ([]byte, error)
	SplitPayload(int) ([]Marshaler, error)
}

// StreamJSONMarshaler is an interface for metrics that are able to serialize themselves in a stream
type StreamJSONMarshaler interface {
	Marshaler
	JSONHeader() []byte
	Len() int
	JSONItem(i int) ([]byte, error)
	DescribeItem(i int) string
	JSONFooter() []byte
}
