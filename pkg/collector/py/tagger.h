// Unless explicitly stated otherwise all files in this repository are licensed
// under the Apache License Version 2.0.
// This product includes software developed at Datadog (https://www.datadoghq.com/).
// Copyright 2016-2019 Datadog, Inc.

// +build cpython

#ifndef TAGGER_HEADER
#define TAGGER_HEADER

#include <Python.h>

void register_tagger_module();

#endif /* TAGGER_HEADER */