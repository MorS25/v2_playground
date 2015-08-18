# MAVLink v2 Playground

This is a test repository to try out new concepts for MAVLink 2.0. It is based off discussions on the public Dronecode TSC mailing list.

Note that this implementation can change rapidly during the course of the prototyping phase.

## Installation

### Mac OS

  ```
  brew install capnp pkg-config
  ```

### Linux

  ```
  sudo apt-get install capnp pkg-config
  ```

## Building and Running

  ```
  cmake .
  make
  ./mavlink_test
  ```

## Serialization / Data Format

The current best guess is Cap'n Proto: https://capnproto.org
  * [Installation](https://capnproto.org/install.html)

## Transport layer

  * nanomsg
  * ZeroMQ
  * RabbitMQ
  * POSIX sockets

## Local network discovery

  * Broadcast to 14550
  * ...
