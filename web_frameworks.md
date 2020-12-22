# Some pros and cons

## Quick overview of different python web frameworks

1. Popular Full-Stack Frameworks

- Django: 

This framework is great for fully-fledged web apps and mid-range scalable projects. It has built-in features and allows for code re-usage, coherent modification of different components of the code, and other functionality that simplifies web development. Django works well with Oracle SQL, PostgreSQL, MySQL, and other well-known databases.
```diff
+ clear and defined MVC organization
+ code re-usage
+ highly customizable
+ rapid dev
+ scalable
+ forms framework
+ simple database management
+ admin interface

- deep learning curve
- for mid to big projects
- feels like too much software for small projects
```

- Turbogears:

TurboGears consists of several components such as Repoze, WebOb, and Genshi, and is based on the MVC architecture. It’s good for fast and efficient web application development, which is also more maintainable. With this framework, you can write small or complex applications using minimal or full-stack modes respectively.

```diff
+ data persistance
+ rapid web app dev
+ transaction manager to help with multi-databases deployments
+ many integrations (MongoDB, Django, Rails...)

- not so popular
- lack of help
```

- Dash:

```diff
+ generated entirely from Python (even html and js)
+ interactive components
+ multi user & multi sessions
+ edited to show Graphs

- oriented for data visualisation
```

2. Popular Non Full-Stack Frameworks

- Flask:

This framework’s philosophy is to provide a simple and manageable solution that can be easily customized. Flask defines itself as a microframework and is most commonly applied to small solutions whose main priority is lean fudashctionality. The framework is also used for creating prototypes.

```diff
+ best for light web app
+ easy to understand dev
+ very flexible and easy
+ unit test integration
+ minimalist without sacrificing power

- young framework
- non full-stack
- no scaling
- using lot of modules
- truly limited in features
- lack of database/ORM/forms
```

- Pyramid: 

With this framework, you can start small and scale if needed. Pyramid can be used with various databases and applications or extended with plugins — developers can add whatever functionality they need. That’s handy when you need to implement various solutions in one task.

```diff
+ good for all project size
+ flexibility
+ AJAX request
+ SQLAlchemy support

- conventions to learn
- no admin interface
```