# TiKi Home Test

Tiki Home Test

## Test 1

- Build script to install base servers for production environment, use any automation tools suits you (ansible, saltstack, terraform, ...). The solution should setup following components, make any changes as you see fit, so we can assess your consideration for production-grade system
  • sysadmin engineer accounts, hostname (dns), cli commands that you use often
  • Install docker daemon, specify logging driver + storage driver of your choice
  • server should be prepared / tuned for high network traffic workload

- Solution: [link](./test_1/README.md)

## Test 2

- Write/dockerize and deploy a simple web application that echo back client ip and all request headers in json format. The application should listen on port TCP/80 and has a proper logging for later audit, debug purposes. Eg:

```bash
$ curl http://abc.xyz/
{
"Client IP": "192.168.1.10", "Host": "abc.xyz", "User-Agent": "curl/7.61.1", "Accept": "*/*"
}
```

- Solution: [link](./test_2/README.md)

## Test 3

- Describe your idea to monitor response time of a web application. Draw a model that is scalable and responsive to the most traffic you have ever deployed.

- Solution: [link](./test_3/README.md)

## Test 4

- Your dream team has 3 or 4 members. What would you do if you had destroyed a service by accident? How about if it was your colleague that done it ?

- Solution: [link](./test_4/README.md)

## Bonus point

- Use python flask framework, follow pep8 style
- Utilize docker layer caching to speed up image building process
