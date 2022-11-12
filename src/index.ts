import { sayHello } from './services/say-hello/say-hello'

const main = (): void => {
  const greeting = sayHello('Tri')
  console.log(greeting)
}

main()
