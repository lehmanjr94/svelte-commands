echo off
set /p component="Enter the Component Name: "
echo ^<script lang="ts"^> >> %component%.svelte
echo     import './%component%.style.svelte'; >> %component%.svelte
echo     export let component: string = '%component%'; >> %component%.svelte
echo ^</script^> >> %component%.svelte
echo. >> %component%.svelte
echo ^<main^> >> %component%.svelte
echo     ^<p^>{component} works!^</p^> >> %component%.svelte
echo ^</main^> >> %component%.svelte

echo ^<style^> >> %component%.style.svelte
echo. >> %component%.style.svelte
echo ^</style^> >> %component%.style.svelte