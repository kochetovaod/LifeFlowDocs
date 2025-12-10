# Auth API (v1)

## POST /v1/auth/signup
- body: `{email, password, full_name?, timezone}`
- result: `{user, access_token, refresh_token}`

## POST /v1/auth/login
- body: `{email, password, device_id}`
- result: `{user, access_token, refresh_token}`

## POST /v1/auth/refresh
- body: `{refresh_token, device_id}`
- result: `{access_token}`

## POST /v1/auth/logout
- headers: `Authorization`
- body: `{all_devices?: boolean}`
- result: `{success: true}`

## POST /v1/auth/forgot
- body: `{email}` → письмо с кодом/ссылкой

## POST /v1/auth/reset
- body: `{email, code, new_password}`

Общие правила: rate limit для `/signup` и `/forgot`, ответы содержат `request_id`.
