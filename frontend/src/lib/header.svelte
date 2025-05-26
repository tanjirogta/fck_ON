<script lang="ts">
    import {
        Styles,
        Collapse,
        NavbarToggler,
        NavbarBrand,
        Nav,
        Navbar,
        NavItem,
        NavLink,
        Dropdown,
        DropdownToggle,
        DropdownMenu,
        DropdownItem,
    } from "@sveltestrap/sveltestrap";

    let isOpen = false;

    function handleUpdate(event) {
        isOpen = event.detail.isOpen;
    }
</script>

<Navbar color="dark" dark expand="md" container={false} class="fixed-top w-100">
    <NavbarBrand href="/" class="d-flex align-items-center">
        <img src="/icon_512x512.png" alt="Logo" width="40" height="40" class="d-inline-block align-text-top me-2 margine-logoimg-20" />
        <p>Crying Obsidian</p>
    </NavbarBrand>
    <NavbarToggler on:click={() => (isOpen = !isOpen)} />
    <Collapse {isOpen} navbar expand="md" on:update={handleUpdate}>
        <Nav class="ms-auto" navbar>
            <Dropdown nav inNavbar>
                <DropdownToggle nav caret>Options</DropdownToggle>
                <DropdownMenu end>
                    <DropdownItem>Option 1</DropdownItem>
                    <DropdownItem>Option 2</DropdownItem>
                    <DropdownItem divider />
                    <DropdownItem>Reset</DropdownItem>
                </DropdownMenu>
            </Dropdown>
        </Nav>
    </Collapse>
</Navbar>

<style>
    .margine-logoimg-20 {
        margin-left: 20px;
        margin-right: 20px;
        margin-top: -6px;
    }
</style>