<script>
    import { onMount } from 'svelte';
    import Header from './lib/header.svelte';
    	// Import markdown conversion library
    import { marked } from 'marked'
	  // Declare a variable to store the markdown data
    let markdown = ""
</script>

<svelte:head>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
</svelte:head>

<main>
  
    <Header />
    <h1>Markdown Editor</h1>

    <!-- Declare a textarea where the user can enter markdown, and bind it to the variable `markdown` -->
    <textarea bind:value={markdown} placeholder="Enter markdown here"/>
    
    <!-- Convert the markdown to HTML and display it -->
    <div class="preview">{@html marked(markdown)}</div>
</main>

<style>
  textarea, .preview {
		box-sizing: border-box;
		display: block;
		width: 100%;
	}
	
	textarea {
		font-family: monospace, Roboto;
		height: 25%;
		border: none;
		margin: 0;
		padding: 1rem;
	}
	
	.preview {
		height: 75%;
		padding: 2rem;
		border-top: solid 2px #888;
	}
	
	h1 {
		background: #e1e1e1;
		margin: 0px;
		padding: 0.8rem;
		font-size: 1.2rem;
	}
	
	:global(body) {
		padding: 0;
	}
</style>
