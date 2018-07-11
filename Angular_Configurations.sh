------------------------------------------------------------------------------------------------------
Angular Setup :: 
------------------------------------------------------------------------------------------------------
1. 	Install Node.js

2. 	Check node and npm installation :
		> node -v
		> npm -v

3.  If your network is on proxy, then setup proxy for npm :
		> npm config set proxy http://<username>:<password>@<proxy-server-url>:<port>
		> npm config set https-proxy http://<username>:<password>@<proxy-server-url>:<port>
		
	[ Note : Your username or password must not contain (:) (@), because they will lead to incorrect URL ]
		
4.  Install Angular :
		> npm install -g @angular/cli
		
5.  Check angular installation : 
		> ng -v
		
6.  Create new project
		> ng new <project_name> -skip-install
	
	[ Note : -skip-install is optional & does not install modules, you can install modules using "npm -install". "ng build --prod" for generating files for production environment. ]

7.  Deploy on web server : 
		> ng serve -o 
	[ Note : -o opens browser automatically after deployment and is optional. URL will be http://localhost:4200 ]

		> ng serve --host 172.29.37.48 --port 4201 -o
	[ Note : --host and --port used for changing ip and port on which app will be hosted. ]

8.  Create new Module or component through : 
		> ng generate module <module_name>
		> ng generate component <comp_name>

9.  platformBrowserDynamic() used for bootstraping;

10. To install Bootstrap 3 into angular project, use below command : 
		> npm install --save bootstrap@3
		
	Then import bootstrap into the project by adding path to css file in ".angular-cli.json" file, besides "styles.css" :
		"styles": [
			"../node_modules/bootstrap/dist/css/bootstrap.min.css",
			"styles.css"
		]
		
11. Whenever you create new component manually, do not forget to do the entry in "app.module.ts" file.
	
		import { HeaderComponent } from './header/header.component';
		
		declarations: [
			AppComponent,
			HeaderComponent
		]

12. Useful Modules for development :
		import { FormsModule } from '@angular/forms';
		import { HttpModule } from '@angular/http';
		
		imports: [
			BrowserModule,
			FormsModule,
			HttpModule
		]

13. Commands to generate new component : 
		> ng g component <component_name> , or
		> ng g c <component_name>
		
	To prevent the creation of testing file (i.e. *.spec.ts)
		> ng g c <component_name> --spec false

	To create component inside some folder (i.e. by default it will be created inside app folder)
		> ng g c <folder_name>/<component_name> --spec false

14. Min. code required for new Component : 
		import { Component } from '@angular/core';

		@Component({
			selector : 'app-header',
			templateUrl: './header.component.html'
		})
		export class HeaderComponent {}
		
	
	
------------------------------------------------------------------------------------------------------
Update NodeJS :: 
------------------------------------------------------------------------------------------------------
Download latest installer & run.


------------------------------------------------------------------------------------------------------
Update NPM :: 
------------------------------------------------------------------------------------------------------
1.	Run PowerShell as Administrator

	> Set-ExecutionPolicy Unrestricted -Scope CurrentUser -Force
	> npm install -g npm-windows-upgrade
	> npm-windows-upgrade
	

------------------------------------------------------------------------------------------------------
Update Angular CLI :: 
------------------------------------------------------------------------------------------------------
	> npm uninstall -g angular-cli
	> npm cache verify 						(if npm > 5)
	> npm install -g @angular/cli@latest
	
	Use -f to force the command
	> npm cache clean -f
	
	You can download the Angular 6 release candidate from GitHub or via the terminal command 
	> npm install -g @angular/cli@next 
   
    
------------------------------------------------------------------------------------------------------
Update Angular Inside Local Project :: 
------------------------------------------------------------------------------------------------------
	> rm -rf node_modules
	> npm uninstall --save-dev angular-cli
	> npm install --save-dev @angular/cli@latest
	> npm install
	
	Use below command to update a project.
	> ng update –next
