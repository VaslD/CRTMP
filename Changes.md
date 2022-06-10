# Changes

The source code was originally released as part of rtmpdump (https://rtmpdump.mplayerhq.hu), under GPL v2.

The following changes were made, and the new code is licensed under Apache 2.0, a GPL compatible license.

- Changed code referencing OpenSSL to reference Apple's version of BoringSSL.
- Changed call that sets dh's length to BoringSSL API counterpart.
- Added library manifest to support dependency manager CocoaPods.
