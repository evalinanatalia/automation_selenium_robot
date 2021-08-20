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
${language}		//*[@id="msdd"]
${list_Skills}		Skills
${list_countries}		countries
${list_country}		//*[@id="basicBootstrapForm"]/div[10]/div/span/span[1]/span
${list_years}		//*[@id="yearbox"]
${list_month}		//*[@id="basicBootstrapForm"]/div[11]/div[2]/select			 
${list_day}		daybox						
${first_password}		firstpassword						
${second_password}		secondpassword						
${submit_btn}		submitbtn						
${browse}		imagesrc						


*** Test Cases ***
Start Automation
	Launch Browser
	Exit Browser

*** Keywords ***	
Launch Browser
	Open Browser	${URL}	${Browser}
	Maximize Browser Window
	Sleep	3
	Click Element	${menu_register}	
	
	#Input editext
	Input Text	${first_name}	Evalina
	Input Text	${last_name}	Simangunsong
	Input Text	${address}	Jl G1 Slipi, Jakarta Barat
	Input Text	${email}	testing@gmail.com
	Input Text	${phone}	081297549740
	
	#Upload File
	Choose File  ${browse}	D://eva/cv/foto-profil-wa-30bcd.jpg
	Sleep	2
	
	#Choose Radio Options
	Select Radio Button		radiooptions	Male
	
	#Choose Checkbox Options
	Select Checkbox		checkbox2	

	
	Click Element	${language}
	Sleep	2
	Click Element	//*[@id="basicBootstrapForm"]/div[7]/div/multi-select/div[2]/ul/li[1]
	
	#Choose item from list by index/label
	Select From List By Index	${list_Skills}	3
	Select From List By Label	${list_countries}	Indonesia
	Select From List By Label	${list_years}	1994
	Select From List By Label	${list_month}	December
	Select From List By Label	${list_day}	9
	
	Input Text		${first_password}	12345678
	Input Text		${second_password}	12345678
	
	
	
	Click Element	${submit_btn}
	Sleep	3
	
	
Exit Browser
	Close Browser
	