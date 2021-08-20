*** Setting ***
Library		Selenium2Library

*** Variables ***
${Browser}		Chrome
${URL}			http://demo.automationtesting.in/Index.html
${menu_register}	//*[@id="btn2"]
${first_name}		//*[@id="basicBootstrapForm"]/div[1]/div[1]/input
${last_name}		//*[@id="basicBootstrapForm"]/div[1]/div[2]/input
${address}		//*[@id="basicBootstrapForm"]/div[2]/div/textarea
${email}		//*[@id="eid"]/input
${phone}		//*[@id="basicBootstrapForm"]/div[4]/div/input				


*** Test Cases ***
Start Automation
	Launch Browser
	Exit Browser

*** Keywords ***	
Launch Browser
	Open Browser	${URL}	${Browser}
	Maximize Browser Window
	
	Sleep	1
	Click Element	${menu_register}	
	Input Text	${first_name}	Evalina
	Input Text	${last_name}	Simangunsong
	Input Text	${address}	Jl G1 Slipi, Jakarta Barat
	Input Text	${email}	testing@gmail.com
	Input Text	${phone}	081297549740
	
	Sleep	3
	
	
Exit Browser
	Close Browser
	