-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 25 2018 г., 16:48
-- Версия сервера: 5.6.38
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `WD04-project-ragimguseynov`
--

-- --------------------------------------------------------

--
-- Структура таблицы `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `about`
--

INSERT INTO `about` (`id`, `name`, `description`) VALUES
(1, 'Егор Казаков', 'Я веб-разработчик'),
(2, 'Егор Казаков', 'Я веб-разработчик');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `cat_title` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `cat_title`) VALUES
(1, 'Путешествие'),
(2, 'JavaScript'),
(3, 'Програмирование'),
(4, 'Компьютеры');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(11) UNSIGNED NOT NULL,
  `post_id` int(11) UNSIGNED DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `text` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `text`, `date_time`) VALUES
(1, 21, 1, 'выввавыав', '2018-10-23 20:09:00'),
(2, 8, 1, 'Очень красивый город.', '2018-10-23 21:32:26'),
(3, 8, 1, 'Очень большой город\r\n', '2018-10-23 21:37:00'),
(4, 21, 1, 'ававав', '2018-10-23 21:46:33'),
(5, 21, 1, 'вывывыываукуп', '2018-10-23 21:46:39'),
(6, 21, 4, 'dsdsadsadsafd3232323', '2018-10-23 21:49:15');

-- --------------------------------------------------------

--
-- Структура таблицы `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `email` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `firstname` varchar(191) DEFAULT NULL,
  `secondname` varchar(191) DEFAULT NULL,
  `skype` varchar(191) DEFAULT NULL,
  `vk` varchar(191) DEFAULT NULL,
  `fb` varchar(191) DEFAULT NULL,
  `github` varchar(191) DEFAULT NULL,
  `twitter` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `contacts`
--

INSERT INTO `contacts` (`id`, `email`, `phone`, `address`, `firstname`, `secondname`, `skype`, `vk`, `fb`, `github`, `twitter`) VALUES
(1, 'mail@gmail.com', '0506895425', 'London', 'Anthony', 'Martial', 'mar012', 'https://vk.com/club165382774', '', 'https://github.com/ragimoff', '');

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_520_ci,
  `author_id` int(11) UNSIGNED DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `post_img` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_img_small` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `cat` int(11) UNSIGNED DEFAULT NULL,
  `date` int(11) UNSIGNED DEFAULT NULL,
  `update_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `text`, `author_id`, `date_time`, `post_img`, `post_img_small`, `cat`, `date`, `update_time`) VALUES
(8, 'Нью-Йорк', '<p>Нью-Йорк включает пять боро (районов), расположенных в месте впадения реки Гудзон в Атлантический океан. В центре города расположен густонаселенный Манхэттен &ndash; один из крупнейших в мире коммерческих, финансовых и культурных центров. Главные достопримечательности Нью-Йорка &ndash; многочисленные небоскребы, в том числе Эмпайр-стейт-билдинг, и огромный Центральный парк. На залитой неоновыми огнями площади Таймс-сквер расположен театр &quot;Бродвей&quot;.</p>\r\n', 1, '2018-10-19 06:20:39', '-121870858.jpg', '320--121870858.jpg', 1, 1540268912, '2018-10-23 07:28:32'),
(9, 'Программирование', '<p>Программирование, как род занятий, может являться основной профессиональной деятельностью специалиста, либо использоваться в качестве вспомогательной деятельности для решения иных профессиональных задач, либо же использоваться в непрофессиональной сфере (как инструмент решения задач или ради получения удовольствия от процесса программирования). Термин &laquo;программист&raquo; не обязательно подразумевает профессиональное образование или профессиональную деятельность.</p>\r\n', 1, '2018-10-19 06:22:25', '1079837309.jpeg', '320-1079837309.jpeg', 2, 1540268892, '2018-10-23 07:28:12'),
(11, 'GitHub анонсировала новые инструменты автоматизации разработки', 'GitHub представила ряд новых функций, которые позволят упростить разработку и улучшить взаимодействие разработчиков с сервисом. Одна из функций позволяет вносить изменения буквально одним кликом мыши.', 1, '2018-10-19 07:00:50', '582728028.jpg', '320-582728028.jpg', 4, NULL, NULL),
(17, 'Что не так в статьях &laquo;Что должен знать начинающий программист&raquo;', 'Сейчас достаточно много статей, руководств и даже целых книг о том, какими знаниями и навыками должны обладать программисты, в первую очередь начинающие. И большинство из них допускают одну фатальную ошибку. Какую? Об этом мы и поговорим.\r\n\r\nКаковы же к требования к знаниям начинающих программистов? Можно встретить огромные списки, содержащие как минимум алгоритмы и структуры данных, паттерны проектирования, многопоточность и многое другое.\r\n\r\nХочется задать следующий вопрос авторам этих списков: «Часто ли начинающему программисту дают задание:\r\n\r\nоптимизировать производительность или потребление памяти приложения или сервиса (ведь для этого изучаются алгоритмы и структуры данных);\r\nпроектировать приложение или сервис, его части, или перепроектировать существующее (ведь для этого изучаются паттерны проектирования);\r\nреализовывать многопоточность?»\r\n\r\nРедко когда ответ на этот вопрос будет положительным.\r\n\r\nКонечно, ни в коем случае не стоит умалять важность указанных разделов знаний, но стоит учесть два ключевых момента. Во-первых, уже есть библиотеки, фреймворки и инструменты, которые не только позволяют уменьшить зависимость от уровня программиста (естественно, за счёт повышения уровня абстракции), но и даже диктуют архитектуру и стиль написания кода. Во-вторых, есть более важные знания и навыки.\r\n\r\nЕсли с первым пунктом всё более-менее понятно, то о втором нужно поговорить подробнее. Что это за «более важные знания и навыки»?\r\n\r\nОтвет достаточно простой. Первое — знания о том, для каких целей создаётся приложение или сервис. Второе — знания о том, как приложение или сервис функционируют в Production-среде.\r\nК сожалению, в большинстве статей о навыках начинающих программистов о них умалчивается.', 1, '2018-10-23 05:12:53', '1104921077.jpg', '320-1104921077.jpg', 3, NULL, '2018-10-23 05:38:35'),
(18, 'Как отказаться от jQuery в современном фронтенде: опыт команды GitHub', '<h2>Зачем jQuery был нужен раньше?</h2>\r\n\r\n<p><a href=\"https://blog.jquery.com/2007/09/16/jquery-1-2-1-released/\" rel=\"nofollow noopener noreferrer\" target=\"_blank\">jQuery 1.2.1</a> вошёл в число зависимостей GitHub в конце 2007 года. Это произошло за год до того, как Google выпустил первую версию браузера Chrome. На тот момент не было общепринятого способа обращаться к элементам DOM с помощью CSS-селектора, не было стандартного способа добавить анимацию к стилю элемента, а интерфейс <a href=\"https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest\" rel=\"nofollow noopener noreferrer\" target=\"_blank\">XMLHttpRequest</a>, предложенный&nbsp;Internet Explorer, как и многие API, был плохо совместим с браузерами.</p>\r\n\r\n<p>С jQuery стало гораздо проще управлять DOM, создавать анимации и делать AJAX-запросы. У веб-разработчиков появилась возможность создавать более современные, динамические сайты, которые выделялись среди остальных. Самое главное, все функции JavaScript, проверенные в одном браузере с помощью jQuery, как правило, работали и в других браузерах. На заре GitHub, когда большинство его функций только обретали форму, появление jQuery позволило небольшой команде разработчиков быстро создавать прототипы и представлять новые функции&nbsp;без необходимости подстраивать их отдельно под каждый браузер.</p>\r\n\r\n<p>Простой интерфейс jQuery также послужил основой для создания библиотек, которые в будущем стали компонентами остальной части фронтенда GitHub.com: <a href=\"https://github.com/defunkt/jquery-pjax\" rel=\"nofollow noopener noreferrer\" target=\"_blank\">pjax</a> и <a href=\"https://github.com/defunkt/facebox\" rel=\"nofollow noopener noreferrer\" target=\"_blank\">facebox</a>.</p>\r\n', 1, '2018-10-23 07:13:54', '598738944.jpg', '320-598738944.jpg', 3, NULL, NULL),
(19, 'Паттерны проектирования в JavaScript', '<h2>Что такое паттерн проектирования?</h2>\r\n\r\n<p><br />\r\nВ сфере разработки программного обеспечения <a href=\"https://ru.wikipedia.org/wiki/%D0%A8%D0%B0%D0%B1%D0%BB%D0%BE%D0%BD_%D0%BF%D1%80%D0%BE%D0%B5%D0%BA%D1%82%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D1%8F\">паттерн</a> проектирования (design pattern) &mdash; это повторяемая архитектурная конструкция, представляющая собой решение проблемы проектирования в рамках некоторого часто возникающего контекста. Паттерны проектирования представляют собой обобщение опыта профессиональных разработчиков ПО. Паттерн проектирования можно рассматривать как некий шаблон, в соответствии с которым пишут программы.<br />\r\n&nbsp;</p>\r\n\r\n<h2>Зачем нужны паттерны проектирования?</h2>\r\n\r\n<p><br />\r\nМногие программисты либо думают, что паттерны проектирования &mdash; это пустая трата времени, либо просто не знают о том, как применять их правильно. Однако использование подходящего паттерна может помочь в написании более качественного и понятного кода, который, за счёт понятности, легче будет поддерживать.<br />\r\n<br />\r\nСамое важное здесь, пожалуй, то, что применение паттернов даёт разработчикам ПО нечто вроде словаря общеизвестных терминов, которые весьма полезны, например, при разборе чужого кода. Паттерны раскрывают предназначение тех или иных фрагментов программы для тех, кто пытается разобраться с устройством какого-нибудь проекта.<br />\r\n<br />\r\nНапример, если вы используете паттерн &laquo;Декоратор&raquo;, это тут же сообщит новому программисту, пришедшему в проект, о том, какие именно задачи решает некий фрагмент кода и зачем он нужен. Благодаря этому такой программист сможет больше времени уделить практическим задачам, которые решает программа, а не попыткам понять её внутреннее устройство.<br />\r\n<br />\r\nТеперь, когда мы разобрались с тем, что такое паттерны проектирования, и с тем, для чего они нужны, перейдём, собственно, к паттернам и к описанию их реализации с использованием JavaScript.<br />\r\n&nbsp;</p>\r\n\r\n<h2>Паттерн &laquo;Модуль&raquo;</h2>\r\n\r\n<p><br />\r\nМодуль &mdash; это самостоятельный фрагмент кода, который можно изменять, не затрагивая другой код проекта. Модули, кроме того, позволяют избегать такого явления, как загрязнение областей видимости, благодаря тому, что они создают отдельные области видимости для объявляемых в них переменных. Модули, написанные для одного проекта, можно повторно использовать в других проектах, в том случае, если их механизмы универсальны и не привязаны к особенностям конкретного проекта.<br />\r\n<br />\r\nМодули &mdash; это составная часть любого современного JavaScript-приложения. Они помогают поддерживать чистоту кода, способствуют разделению кода на осмысленные фрагменты и помогают его организовывать. В JavaScript существует множество способов создания модулей, одним из которых является паттерн &laquo;Модуль&raquo; (Module).<br />\r\n<br />\r\nВ отличие от других языков программирования, JavaScript не имеет модификаторов доступа. То есть, переменные нельзя объявлять как приватные или публичные. В результате паттерн &laquo;Модуль&raquo; используется ещё и для эмуляции концепции инкапсуляции.<br />\r\n<br />\r\nЭтот паттерн использует IIFE (Immediately-Invoked Functional Expression, немедленно вызываемое функциональное выражение), замыкания и области видимости функций для имитации этой концепции. Например:<br />\r\n&nbsp;</p>\r\n\r\n<pre>\r\n<code>const myModule = (function() {\r\n &nbsp;\r\n &nbsp;const privateVariable = &#39;Hello World&#39;;\r\n &nbsp;\r\n &nbsp;function privateMethod() {\r\n &nbsp;&nbsp;&nbsp;console.log(privateVariable);\r\n &nbsp;}\r\n &nbsp;return {\r\n &nbsp;&nbsp;&nbsp;publicMethod: function() {\r\n &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;privateMethod();\r\n &nbsp;&nbsp;&nbsp;}\r\n &nbsp;}\r\n})();\r\nmyModule.publicMethod();</code></pre>\r\n\r\n<p><br />\r\nТак как перед нами IIFE, код выполняется немедленно и возвращаемый выражением объект назначается константе <code>myModule</code>. Благодаря тому, что тут имеется замыкание, у возвращённого объекта есть доступ к функциям и переменным, объявленных внутри IIFE, даже после завершения работы IIFE.<br />\r\n<br />\r\nВ результате переменные и функции, объявленные внутри IIFE, скрыты от механизмов, находящихся во внешней по отношению к ним области видимости. Они оказываются приватными сущностями константы <code>myModule</code>.<br />\r\n<br />\r\nПосле того, как этот код будет выполнен, <code>myModule</code> будет выглядеть следующим образом:<br />\r\n&nbsp;</p>\r\n\r\n<pre>\r\n<code>const myModule = {\r\n &nbsp;publicMethod: function() {\r\n &nbsp;&nbsp;&nbsp;privateMethod();\r\n &nbsp;}};</code></pre>\r\n\r\n<p><br />\r\nТо есть, обращаясь к этой константе, можно вызвать общедоступный метод объекта <code>publicMethod()</code>, который, в свою очередь, вызовет приватный метод <code>privateMethod()</code>. Например:<br />\r\n&nbsp;</p>\r\n\r\n<pre>\r\n<code>// Выводит &#39;Hello World&#39;\r\nmodule.publicMethod();</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Паттерн &laquo;Открытый модуль&raquo;</h2>\r\n\r\n<p><br />\r\nПаттерн &laquo;Открытый модуль&raquo; (Revealing Module) представляет собой немного улучшенную версию паттерна &laquo;Модуль&raquo;, которую предложил Кристиан Хейльманн. Проблема паттерна &laquo;Модуль&raquo; заключается в том, что нам приходится создавать публичные функции только для того, чтобы обращаться к приватным функциям и переменным.<br />\r\n<br />\r\nВ рассматриваемом паттерне мы назначаем свойствам возвращаемого объекта приватные функции, которые хотим сделать общедоступными. Именно поэтому данный паттерн и называют &laquo;Открытый модуль&raquo;. Рассмотрим пример:<br />\r\n&nbsp;</p>\r\n\r\n<pre>\r\n<code>const myRevealingModule = (function() {\r\n &nbsp;\r\n &nbsp;let privateVar = &#39;Peter&#39;;\r\n &nbsp;const publicVar &nbsp;= &#39;Hello World&#39;;\r\n &nbsp;function privateFunction() {\r\n &nbsp;&nbsp;&nbsp;console.log(&#39;Name: &#39;+ privateVar);\r\n &nbsp;}\r\n &nbsp;\r\n &nbsp;function publicSetName(name) {\r\n &nbsp;&nbsp;&nbsp;privateVar = name;\r\n &nbsp;}\r\n &nbsp;function publicGetName() {\r\n &nbsp;&nbsp;&nbsp;privateFunction();\r\n &nbsp;}\r\n &nbsp;/** открываем функции и переменные, назначая их свойствам объекта */\r\nreturn {\r\n &nbsp;&nbsp;&nbsp;setName: publicSetName,\r\n &nbsp;&nbsp;&nbsp;greeting: publicVar,\r\n &nbsp;&nbsp;&nbsp;getName: publicGetName\r\n &nbsp;};\r\n})();\r\nmyRevealingModule.setName(&#39;Mark&#39;);\r\n// Выводит Name: Mark\r\nmyRevealingModule.getName();</code></pre>\r\n\r\n<p><br />\r\nПрименение этого паттерна упрощает понимание того, какие функции и переменные модуля общедоступны, что способствует улучшению читабельности кода.<br />\r\n<br />\r\nПосле выполнения IIFE <code>myRevealingModule</code> выглядит так:<br />\r\n&nbsp;</p>\r\n\r\n<pre>\r\n<code>const myRevealingModule = {\r\n &nbsp;setName: publicSetName,\r\n &nbsp;greeting: publicVar,\r\n &nbsp;getName: publicGetName\r\n};</code></pre>\r\n\r\n<p><br />\r\nМы можем, например, вызвать метод <code>myRevealingModule.setName(&#39;Mark&#39;)</code>, который представляет собой ссылку на внутреннюю функцию <code>publicSetName</code>. Метод <code>myRevealingModule.getName()</code> ссылается на внутреннюю функцию <code>publicGetName</code>. Например:<br />\r\n&nbsp;</p>\r\n\r\n<pre>\r\n<code>myRevealingModule.setName(&#39;Mark&#39;);\r\n// выводит Name: Mark\r\nmyRevealingModule.getName();</code></pre>\r\n\r\n<p><br />\r\nРассмотрим преимущества паттерна &laquo;Открытый модуль&raquo; перед паттерном &laquo;Модуль&raquo;:<br />\r\n&nbsp;</p>\r\n\r\n<ul>\r\n	<li>&laquo;Открытый модуль&raquo; позволяет делать общедоступными скрытые сущности модуля (и снова скрывать их, если нужно), модифицируя, для каждой из них, лишь одну строку в объекте, возвращаемом после выполнения IIFE.</li>\r\n	<li>Возвращаемый объект не содержит определения функций. Всё, что находится справа от имён его свойств, определено в IIFE. Это способствует чистоте кода и упрощает его чтение.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Модули в ES6</h2>\r\n\r\n<p><br />\r\nДо выхода стандарта ES6 в JavaScript не было стандартного средства для работы с модулями, в результате разработчикам приходилось использовать сторонние библиотеки или паттерн &laquo;Модуль&raquo; для реализации соответствующих механизмов. Но с приходом ES6 в JavaScript появилась стандартная система модулей.<br />\r\n<br />\r\nМодули ES6 хранятся в файлах. Один файл может содержать лишь один модуль. Всё, что находится внутри модуля, по умолчанию является приватным. Функции, переменные и классы можно делать публичными с использованием ключевого слова <code>export</code>. Код внутри модуля всегда выполняется в строгом режиме.<br />\r\n&nbsp;</p>\r\n\r\n<h3>▍Экспорт модуля</h3>\r\n\r\n<p><br />\r\nЕсть два способа экспорта функции или переменной, объявленной в модуле:<br />\r\n&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Экспорт выполняется путём добавления ключевого слова <code>export</code> перед объявлением функции или переменной. Например:<br />\r\n	&nbsp;\r\n	<pre>\r\n<code>// utils.js\r\nexport const greeting = &#39;Hello World&#39;;\r\nexport function sum(num1, num2) {\r\n &nbsp;console.log(&#39;Sum:&#39;, num1, num2);\r\n &nbsp;return num1 + num2;\r\n}\r\nexport function subtract(num1, num2) {\r\n &nbsp;console.log(&#39;Subtract:&#39;, num1, num2);\r\n &nbsp;return num1 - num2;\r\n}\r\n// Это - приватная функция\r\nfunction privateLog() {\r\n &nbsp;console.log(&#39;Private Function&#39;);\r\n}</code></pre>\r\n	</li>\r\n	<li>Экспорт выполняется путём добавления ключевого слова <code>export</code> в конец кода с перечислением имён функций и переменных, которые нужно экспортировать. Например:<br />\r\n	&nbsp;\r\n	<pre>\r\n<code>// utils.js\r\nfunction multiply(num1, num2) {\r\n &nbsp;console.log(&#39;Multiply:&#39;, num1, num2);\r\n &nbsp;return num1 * num2;\r\n}\r\nfunction divide(num1, num2) {\r\n &nbsp;console.log(&#39;Divide:&#39;, num1, num2);\r\n &nbsp;return num1 / num2;\r\n}\r\n// Это приватная функция\r\nfunction privateLog() {\r\n &nbsp;console.log(&#39;Private Function&#39;);\r\n}\r\nexport {multiply, divide};</code></pre>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>▍Импорт модуля</h3>\r\n\r\n<p><br />\r\nТак же, как существуют два способа экспорта, есть и два способа импорта модулей. Делается это с использованием ключевого слова <code>import</code>:<br />\r\n&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Импорт нескольких избранных элементов. Например:<br />\r\n	&nbsp;\r\n	<pre>\r\n<code>// main.js\r\n// Импорт нескольких избранных элементов\r\nimport { sum, multiply } from &#39;./utils.js&#39;;\r\nconsole.log(sum(3, 7));\r\nconsole.log(multiply(3, 7));</code></pre>\r\n	</li>\r\n	<li>Импорт всего, что экспортирует модуль. Например:<br />\r\n	&nbsp;\r\n	<pre>\r\n<code>// main.js\r\n// импорт всего, что экспортирует модуль\r\nimport * as utils from &#39;./utils.js&#39;;\r\nconsole.log(utils.sum(3, 7));\r\nconsole.log(utils.multiply(3, 7));</code></pre>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>▍Псевдонимы для экспортируемых и импортируемых сущностей</h3>\r\n\r\n<p><br />\r\nЕсли имена экспортируемых в код функций или переменных могут вызвать коллизию, их можно изменить при экспорте или при импорте.<br />\r\n<br />\r\nДля переименования сущностей при экспорте можно поступить так:<br />\r\n&nbsp;</p>\r\n\r\n<pre>\r\n<code>// utils.js\r\nfunction sum(num1, num2) {\r\n &nbsp;console.log(&#39;Sum:&#39;, num1, num2);\r\n &nbsp;return num1 + num2;\r\n}\r\nfunction multiply(num1, num2) {\r\n &nbsp;console.log(&#39;Multiply:&#39;, num1, num2);\r\n &nbsp;return num1 * num2;\r\n}\r\nexport {sum as add, multiply};</code></pre>\r\n\r\n<p><br />\r\nДля переименования сущностей при импорте используется такая конструкция:<br />\r\n&nbsp;</p>\r\n\r\n<pre>\r\n<code>// main.js\r\nimport { add, multiply as mult } from &#39;./utils.js&#39;;\r\nconsole.log(add(3, 7));\r\nconsole.log(mult(3, 7));</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Паттерн &laquo;Синглтон&raquo;</h2>\r\n\r\n<p><br />\r\nПаттерн &laquo;Синглтон&raquo; или &laquo;Одиночка&raquo; (Singleton) представляет собой объект, который может существовать лишь в единственном экземпляре. В рамках применения этого паттерна новый экземпляр некоего класса создаётся в том случае, если он пока не создан. Если же экземпляр класса уже существует, то, при попытке обращения к конструктору, возвращается ссылка на соответствующий объект. Последующие вызовы конструктора всегда будут возвращать тот же самый объект.<br />\r\n<br />\r\nФактически, то, что мы называем паттерном &laquo;Синглтон&raquo;, имелось в JavaScript всегда, но называют это не &laquo;Синглтоном&raquo;, а &laquo;объектным литералом&raquo;. Рассмотрим пример:<br />\r\n&nbsp;</p>\r\n\r\n<pre>\r\n<code>const user = {\r\n &nbsp;name: &#39;Peter&#39;,\r\n &nbsp;age: 25,\r\n &nbsp;job: &#39;Teacher&#39;,\r\n &nbsp;greet: function() {\r\n &nbsp;&nbsp;&nbsp;console.log(&#39;Hello!&#39;);\r\n &nbsp;}\r\n};</code></pre>\r\n\r\n<p><br />\r\nТак как каждый объект в JavaScript занимает собственную область памяти и не делит её с другими объектами, всякий раз, когда мы обращаемся к переменной <code>user</code>, мы получаем ссылку на один и тот же объект.<br />\r\n<br />\r\nПаттерн &laquo;Синглтон&raquo; можно реализовать с использованием функции-конструктора. Выглядит это так:<br />\r\n&nbsp;</p>\r\n\r\n<pre>\r\n<code>let instance = null;\r\nfunction User(name, age) {\r\n &nbsp;if(instance) {\r\n &nbsp;&nbsp;&nbsp;return instance;\r\n &nbsp;}\r\n &nbsp;instance = this;\r\n &nbsp;this.name = name;\r\n &nbsp;this.age = age;\r\n &nbsp;\r\n &nbsp;return instance;\r\n}\r\nconst user1 = new User(&#39;Peter&#39;, 25);\r\nconst user2 = new User(&#39;Mark&#39;, 24);\r\n// выводит true\r\nconsole.log(user1 === user2);</code></pre>\r\n\r\n<p><br />\r\nКогда вызывается функция-конструктор, она, в первую очередь, проверяет, существует ли объект <code>instance</code>. Если соответствующая переменная не инициализирована, в <code>instance</code> записывают <code>this</code>. Если же в переменной уже есть ссылка на объект, конструктор просто возвращает <code>instance</code>, то есть &mdash; ссылку на уже существующий объект.<br />\r\n<br />\r\nПаттерн &laquo;Синглтон&raquo; можно реализовать с использованием паттерна &laquo;Модуль&raquo;. Например:<br />\r\n&nbsp;</p>\r\n\r\n<pre>\r\n<code>const singleton = (function() {\r\n &nbsp;let instance;\r\n &nbsp;\r\n &nbsp;function User(name, age) {\r\n &nbsp;&nbsp;&nbsp;this.name = name;\r\n &nbsp;&nbsp;&nbsp;this.age = age;\r\n &nbsp;}\r\n &nbsp;return {\r\n &nbsp;&nbsp;&nbsp;getInstance: function(name, age) {\r\n &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(!instance) {\r\n &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;instance = new User(name, age);\r\n &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}\r\n &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return instance;\r\n &nbsp;&nbsp;&nbsp;}\r\n &nbsp;}\r\n})();\r\nconst user1 = singleton.getInstance(&#39;Peter&#39;, 24);\r\nconst user2 = singleton.getInstance(&#39;Mark&#39;, 26);\r\n// prints true\r\nconsole.log(user1 === user2);</code></pre>\r\n\r\n<p><br />\r\nЗдесь мы создаём новый экземпляр <code>user</code>, вызывая метод <code>singleton.getInstance()</code>. Если экземпляр объекта уже существует, то этот метод просто возвратит его. Если же такого объекта пока нет, метод создаёт его новый экземпляр, вызывая функцию-конструктор <code>User</code>.<br />\r\n&nbsp;</p>\r\n\r\n<h2>Паттерн &laquo;Фабрика&raquo;</h2>\r\n\r\n<p><br />\r\nПаттерн &laquo;Фабрика&raquo; (Factory) использует для создания объектов так называемые &laquo;фабричные методы&raquo;. При этом не требуется указывать классы или функции-конструкторы, которые применяются для создания объектов.<br />\r\n<br />\r\nЭтот паттерн используется для создания объектов в случаях, когда не нужно делать общедоступной логику их создания. Паттерн &laquo;Фабрика&raquo; может быть использован в том случае, если нужно создавать различные объекты в зависимости от специфических условий. Например:<br />\r\n&nbsp;</p>\r\n\r\n<pre>\r\n<code>class Car{\r\n &nbsp;constructor(options) {\r\n &nbsp;&nbsp;&nbsp;this.doors = options.doors || 4;\r\n &nbsp;&nbsp;&nbsp;this.state = options.state || &#39;brand new&#39;;\r\n &nbsp;&nbsp;&nbsp;this.color = options.color || &#39;white&#39;;\r\n &nbsp;}\r\n}\r\nclass Truck {\r\n &nbsp;constructor(options) {\r\n &nbsp;&nbsp;&nbsp;this.doors = options.doors || 4;\r\n &nbsp;&nbsp;&nbsp;this.state = options.state || &#39;used&#39;;\r\n &nbsp;&nbsp;&nbsp;this.color = options.color || &#39;black&#39;;\r\n &nbsp;}\r\n}\r\nclass VehicleFactory {\r\n &nbsp;createVehicle(options) {\r\n &nbsp;&nbsp;&nbsp;if(options.vehicleType === &#39;car&#39;) {\r\n &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return new Car(options);\r\n &nbsp;&nbsp;&nbsp;} else if(options.vehicleType === &#39;truck&#39;) {\r\n &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return new Truck(options);\r\n &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}\r\n &nbsp;}\r\n}</code></pre>\r\n\r\n<p><br />\r\nЗдесь созданы классы <code>Car</code> и <code>Truck</code>, которые предусматривают использование неких стандартных значений. Они применяются для создания объектов <code>car</code> и <code>truck</code>. Также здесь объявлен класс <code>VehicleFactory</code>, который используется для создания новых объектов на основе анализа свойства <code>vehicleType</code>, передаваемого соответствующему методу возвращаемого им объекта в объекте с параметрами <code>options</code>. Вот как со всем этим работать:<br />\r\n&nbsp;</p>\r\n\r\n<pre>\r\n<code>const factory = new VehicleFactory();\r\nconst car = factory.createVehicle({\r\n &nbsp;vehicleType: &#39;car&#39;,\r\n &nbsp;doors: 4,\r\n &nbsp;color: &#39;silver&#39;,\r\n &nbsp;state: &#39;Brand New&#39;\r\n});\r\nconst truck= factory.createVehicle({\r\n &nbsp;vehicleType: &#39;truck&#39;,\r\n &nbsp;doors: 2,\r\n &nbsp;color: &#39;white&#39;,\r\n &nbsp;state: &#39;used&#39;\r\n});\r\n// Выводит Car {doors: 4, state: &quot;Brand New&quot;, color: &quot;silver&quot;}\r\nconsole.log(car);\r\n// Выводит Truck {doors: 2, state: &quot;used&quot;, color: &quot;white&quot;}\r\nconsole.log(truck);</code></pre>\r\n\r\n<p><br />\r\nЗдесь создан объект <code>factory</code> класса <code>VehicleFactory</code>. После этого можно создавать объекты классов <code>Car</code> или <code>Truck</code>, вызывая метод <code>factory.createVehicle()</code> и передавая ему объект <code>options</code> со свойством <code>vehicleType</code>, установленным в значение <code>car</code> или <code>truck</code>.<br />\r\n&nbsp;</p>\r\n\r\n<h2>Паттерн &laquo;Декоратор&raquo;</h2>\r\n\r\n<p><br />\r\nПаттерн &laquo;Декоратор&raquo; (Decorator) используется для расширения функционала объектов без модификации существующих классов или функций-конструкторов. Этот паттерн можно использовать для добавления к объектам неких возможностей без модификации кода, который ответственен за их создание.<br />\r\n<br />\r\nВот простой пример использования этого паттерна:<br />\r\n&nbsp;</p>\r\n\r\n<pre>\r\n<code>function Car(name) {\r\n &nbsp;this.name = name;\r\n &nbsp;// Значение по умолчанию\r\n &nbsp;this.color = &#39;White&#39;;\r\n}\r\n// Создание нового объекта, который планируется декорировать\r\nconst tesla= new Car(&#39;Tesla Model 3&#39;);\r\n// Декорирование объекта - добавление нового функционала\r\ntesla.setColor = function(color) {\r\n &nbsp;this.color = color;\r\n}\r\ntesla.setPrice = function(price) {\r\n &nbsp;this.price = price;\r\n}\r\ntesla.setColor(&#39;black&#39;);\r\ntesla.setPrice(49000);\r\n// Выводит black\r\nconsole.log(tesla.color);</code></pre>\r\n\r\n<p><br />\r\nРассмотрим теперь практический пример применения этого паттерна. Предположим, стоимость автомобилей зависит от их особенностей, от имеющихся у них дополнительных функций. Без использования паттерна &laquo;Декоратор&raquo; нам, для описания этих автомобилей, пришлось бы создавать разные классы для разных комбинаций этих дополнительных функций, в каждом из которых присутствовал бы метод для нахождения стоимости автомобиля. Например, это может выглядеть так:<br />\r\n&nbsp;</p>\r\n\r\n<pre>\r\n<code>class Car() {\r\n}\r\nclass CarWithAC() {\r\n}\r\nclass CarWithAutoTransmission {\r\n}\r\nclass CarWithPowerLocks {\r\n}\r\nclass CarWithACandPowerLocks {\r\n}</code></pre>\r\n\r\n<p><br />\r\nБлагодаря рассматриваемому паттерну можно создать базовый класс <code>Car</code>, описывающий, скажем, автомобиль в базовой комплектации, стоимость которого выражается некоей фиксированной суммой. После этого стандартный объект, создаваемый на основе этого класса, можно расширять с использованием функций-декораторов. Стандартный &laquo;автомобиль&raquo;, обработанный такой функцией, получает новые возможности, что, кроме того, влияет на его цену. Например, эту схему можно реализовать так:<br />\r\n&nbsp;</p>\r\n\r\n<pre>\r\n<code>class Car {\r\n &nbsp;constructor() {\r\n &nbsp;// Базовая стоимость\r\n &nbsp;this.cost = function() {\r\n &nbsp;return 20000;\r\n &nbsp;}\r\n}\r\n}\r\n// Функция-декоратор\r\nfunction carWithAC(car) {\r\n &nbsp;car.hasAC = true;\r\n &nbsp;const prevCost = car.cost();\r\n &nbsp;car.cost = function() {\r\n &nbsp;&nbsp;&nbsp;return prevCost + 500;\r\n &nbsp;}\r\n}\r\n// Функция-декоратор\r\nfunction carWithAutoTransmission(car) {\r\n &nbsp;car.hasAutoTransmission = true;\r\n &nbsp;&nbsp;const prevCost = car.cost();\r\n &nbsp;car.cost = function() {\r\n &nbsp;&nbsp;&nbsp;return prevCost + 2000;\r\n &nbsp;}\r\n}\r\n// Функция-декоратор\r\nfunction carWithPowerLocks(car) {\r\n &nbsp;car.hasPowerLocks = true;\r\n &nbsp;const prevCost = car.cost();\r\n &nbsp;car.cost = function() {\r\n &nbsp;&nbsp;&nbsp;return prevCost + 500;\r\n &nbsp;}\r\n}</code></pre>\r\n\r\n<p><br />\r\nЗдесь мы сначала создаём базовый класс <code>Car</code>, используемый для создания объектов, представляющих автомобили в стандартной комплектации. Затем создаём несколько функций-декораторов, которые позволяют расширять объекты базового класса <code>Car</code> дополнительными свойствами. Эти функции принимают соответствующие объекты в качестве параметров. После этого мы добавляем в объект новое свойство, указывающее на то, какой новой возможностью будет оснащён автомобиль, и переопределяем функцию <code>cost</code> объекта, которая теперь возвращает новую стоимость автомобиля. В результате, для того, чтобы &laquo;оснастить&raquo; автомобиль стандартной конфигурации чем-то новым, мы можем воспользоваться следующей конструкцией:<br />\r\n&nbsp;</p>\r\n\r\n<pre>\r\n<code>const car = new Car();\r\nconsole.log(car.cost());\r\ncarWithAC(car);\r\ncarWithAutoTransmission(car);\r\ncarWithPowerLocks(car);</code></pre>\r\n\r\n<p><br />\r\nПосле этого можно узнать стоимость автомобиля в улучшенной комплектации:<br />\r\n&nbsp;</p>\r\n\r\n<pre>\r\n<code>// Нахождение стоимости автомобиля с учётом улучшений\r\nconsole.log(car.cost());</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Итоги</h2>\r\n\r\n<p><br />\r\nВ этом материале мы разобрали несколько паттернов проектирования, используемых в JavaScript, но, на самом деле, за рамками нашего разговора осталось ещё очень много паттернов, которые могут применяться для решения широкого круга задач.<br />\r\n<br />\r\nВ то время как знание различных паттернов проектирования важно для программиста, не менее важно и их уместное использование. Зная о паттернах и о сфере их применения, программист, анализируя стоящую перед ним задачу, может понять, какой именно паттерн способен помочь её решить.<br />\r\n<br />\r\n<strong>Уважаемые читатели!</strong> Какими паттернами проектирования вы пользуетесь чаще всего?</p>\r\n', 1, '2018-10-23 08:25:31', '41914878.jpeg', '320-41914878.jpeg', 2, NULL, NULL),
(21, 'ывы', '<p>ывывы</p>\r\n', 1, '2018-10-23 19:24:13', NULL, NULL, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `secondname` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `avatar_small` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `recovery_code` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `recovery_code_times` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `role`, `firstname`, `secondname`, `city`, `country`, `avatar`, `avatar_small`, `recovery_code`, `recovery_code_times`) VALUES
(1, 'rmx.880@gmail.com', '$2y$10$hGH2f6ze6ga97MOAbTzU0ePIKeY5CFMhdRTdUZ9zFJKeMxoSoQCNu', 'admin', 'Рагим', 'Гусейнов', 'Баку', 'Азербайджан', '928801005.jpeg', '50-928801005.jpeg', 'bIW3vRl7rO4Xid5', 0),
(2, 'rgm.int01@gmail.com', '$2y$10$jlrV33/iTPS1UBHsjCBUIeGVCsbZGUTue5e5hrnqtF5N1Pp9ZiV9a', 'user', 'Али', 'Асланов', 'Баку', 'Азербайджан', '702572697.jpg', '48-702572697.jpg', '3MJ9hFtGcImeUgY', 0),
(3, 'info2@mail.com', '$2y$10$dGmmcrJi9B7TATYlgKr2beTywbabQ7nTSQit.06pLDgENubFqwj16', 'user', 'Емельян', 'Казаков', 'Казань', 'Россия', '790276935.jpg', '50-790276935.jpg', 'fGmEUNpYqT0i2RH', 0),
(4, 'wqq@ds.tr', '$2y$10$RDEWTJxeECW19MV844JEdu.hUM.bgGGJHl8XFgShBB1OQ/yDMCfuy', 'user', 'john', 'doe', '', 'USA', '238493342.jpg', '50-238493342.jpg', NULL, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_comments_post` (`post_id`),
  ADD KEY `index_foreignkey_comments_user` (`user_id`);

--
-- Индексы таблицы `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_posts_author` (`author_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
