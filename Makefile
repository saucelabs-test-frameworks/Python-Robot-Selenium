run_all_in_parallel:
	make -j ie_case firefox_case chrome_case

ie_case:
	platform="Windows 10" browserName='internet explorer' version=11 ROBOT_BROWSER='internet explorer' pabot --outputdir=results_ie Tests/

firefox_case:
	platform="OS X 10.12" browserName=firefox version=latest ROBOT_BROWSER=firefox pabot --outputdir=results_firefox Tests/

chrome_case:
	platform="OS X 10.13" browserName=chrome version=latest ROBOT_BROWSER=chrome pabot --output=results_chrome Tests/